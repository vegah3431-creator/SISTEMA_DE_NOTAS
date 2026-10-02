// HUGO ERNESTO HERNANDEZ VEGA 
// 26-100-0060
// LINK DE GIT HUB  

Algoritmo SistemaDeNotas
	
	//se declaran las variables
	Definir option Como Entero
	Definir a, b, c, d, e, resultado, promedio, grande Como Real
	Definir aprobados Como Entero
	Definir notas Como Logico
	Definir extra Como Entero
	Definir puntos Como Real
	
	//se define la variable notas como flaso
	notas <- Falso
	
	//inicia el bucle repetir hasta que se ingrese el 5
	Repetir
		
		//muestar el menu de opciones
		Escribir "================================================="
		Escribir "==========  SISTEMA DE NOTAS FE729  ============="
		Escribir ""
		Escribir "1. Ingresar notas"
		Escribir "2. Mostrar notas y categorias"
		Escribir "3. Estadisticas"
		Escribir "4. Sumar puntos extras"
		Escribir "5. Salir"
		Escribir "Opcion:"
		
		//se ingresa la opiona a elegir
		Leer option
		
		//segun la opcion elegida hace lo siguiente
		Segun option Hacer
			
			//la opcion 1 es para que se ingresen las notas de los esyudiantes y lo valide si esta en el rango de 0 a 100 sino da errorr
			1:
				Escribir "Selecciono la opcion Ingresar notas"
				Escribir "Ingrese las 5 notas (de 0 a 100):"
				
				Repetir
					Escribir "Ingrese la nota del alumno 1:"
					Leer a
					Si a < 0 O a > 100 Entonces
						Escribir "Error: la nota debe estar entre 0 y 100."
					FinSi
				Hasta Que a >= 0 Y a <= 100
				
				Repetir
					Escribir "Ingrese la nota del alumno 2:"
					Leer b
					Si b < 0 O b > 100 Entonces
						Escribir "Error: la nota debe estar entre 0 y 100."
					FinSi
				Hasta Que b >= 0 Y b <= 100
				
				Repetir
					Escribir "Ingrese la nota del alumno 3:"
					Leer c
					Si c < 0 O c > 100 Entonces
						Escribir "Error: la nota debe estar entre 0 y 100."
					FinSi
				Hasta Que c >= 0 Y c <= 100
				
				Repetir
					Escribir "Ingrese la nota del alumno 4:"
					Leer d
					Si d < 0 O d > 100 Entonces
						Escribir "Error: la nota debe estar entre 0 y 100."
					FinSi
				Hasta Que d >= 0 Y d <= 100
				
				Repetir
					Escribir "Ingrese la nota del alumno 5:"
					Leer e
					Si e < 0 O e > 100 Entonces
						Escribir "Error: la nota debe estar entre 0 y 100."
					FinSi
				Hasta Que e >= 0 Y e <= 100
				
				resultado <- a + b + c + d + e
				Escribir "El total es de: ", resultado
				
				notas <- Verdadero
				
			//se muestran las notas si hay sino da errorr y si hay muestra la nota de cada estudiante y dice suaprobo o no y con que nota
			2:
				Escribir "Selecciono la opcion Mostrar notas y categorias"
				
				Si notas = Falso Entonces
					
					Escribir "No hay notas"
					
				SiNo
					
					Si a >= 61 Entonces
						Escribir "El alumno 1 fue APROBADO con: ", a, " Puntos"
					SiNo
						Escribir "El alumno 1 fue REPROBADO con: ", a, " Puntos"
					FinSi
					
					Si b >= 61 Entonces
						Escribir "El alumno 2 fue APROBADO con: ", b, " Puntos"
					SiNo
						Escribir "El alumno 2 fue REPROBADO con: ", b, " Puntos"
					FinSi
					
					Si c >= 61 Entonces
						Escribir "El alumno 3 fue APROBADO con: ", c, " Puntos"
					SiNo
						Escribir "El alumno 3 fue REPROBADO con: ", c, " Puntos"
					FinSi
					
					Si d >= 61 Entonces
						Escribir "El alumno 4 fue APROBADO con: ", d, " Puntos"
					SiNo
						Escribir "El alumno 4 fue REPROBADO con: ", d, " Puntos"
					FinSi
					
					Si e >= 61 Entonces
						Escribir "El alumno 5 fue APROBADO con: ", e, " Puntos"
					SiNo
						Escribir "El alumno 5 fue REPROBADO con: ", e, " Puntos"
					FinSi
					
				FinSi
				
			//se muestran las notas si hay sino da errorr y si hay muestra el promedio, la noya mas alra y cuantos aprobaron 
			3:
				Escribir "Selecciono la opcion Estadisticas"
				
				Si notas = Falso Entonces
					
					Escribir "No hay notas"
					
				SiNo
					
					//hace el promedio
					resultado <- a + b + c + d + e
					
					promedio <- resultado / 5
					
					Escribir "El promedio es de: ", promedio
					
					//busca cual es la nota mas alta
					grande <- a
					
					Si b > grande Entonces
						grande <- b
					FinSi
					
					Si c > grande Entonces
						grande <- c
					FinSi
					
					Si d > grande Entonces
						grande <- d
					FinSi
					
					Si e > grande Entonces
						grande <- e
					FinSi
					
					Escribir "La nota mas alta es: ", grande
					
					//valida cuantos apribaron 
					aprobados <- 0
					
					Si a >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si b >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si c >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si d >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si e >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Escribir "Los alumnos aprobados fueron: ", aprobados
					
				FinSi
				
			//se muestran las notas si hay sino da errorr y si hay muestra la nota acyual y se puede seleccionar el alumno al cual aumentarle
			4:
				Escribir "Selecciono la opcion Sumar puntos extras"
				
				Si notas = Falso Entonces
					
					Escribir "No hay notas"
					
				SiNo
					
					Escribir "Ingrese el numero del 1 al 5 para seleccionar el alumno al cual le desa sumar puntos extras:"
					Escribir "Las notas actuales son:"
					Escribir "Alumno 1: ", a
					Escribir "Alumno 2: ", b
					Escribir "Alumno 3: ", c
					Escribir "Alumno 4: ", d
					Escribir "Alumno 5: ", e
					
					Leer extra
					
					//segun el numero del 1 al 5 que se ingrese en estra selecciona ese alumno y le dice cuanto puntos le puede sumar para que no exceda mas de 100 sino da errorr
					Segun extra Hacer
						
						1:
							Escribir "La nota actual del alumno 1 es: ", a
							Escribir "Puede agregar como maximo ", 100 - a, " puntos."
							
							Repetir
								Escribir "Ingrese la cantidad de puntos extras:"
								Leer puntos
								
								Si puntos < 0 O puntos > 100 - a Entonces
									Escribir "Error: los puntos deben estar entre 0 y ", 100 - a
								FinSi
							Hasta Que puntos >= 0 Y puntos <= 100 - a
							
							a <- a + puntos
							Escribir "La nueva nota del alumno 1 es: ", a
							
						2:
							Escribir "La nota actual del alumno 2 es: ", b
							Escribir "Puede agregar como maximo ", 100 - b, " puntos."
							
							Repetir
								Escribir "Ingrese la cantidad de puntos extras:"
								Leer puntos
								
								Si puntos < 0 O puntos > 100 - b Entonces
									Escribir "Error: los puntos deben estar entre 0 y ", 100 - b
								FinSi
							Hasta Que puntos >= 0 Y puntos <= 100 - b
							
							b <- b + puntos
							Escribir "La nueva nota del alumno 2 es: ", b
							
						3:
							Escribir "La nota actual del alumno 3 es: ", c
							Escribir "Puede agregar como maximo ", 100 - c, " puntos."
							
							Repetir
								Escribir "Ingrese la cantidad de puntos extras:"
								Leer puntos
								
								Si puntos < 0 O puntos > 100 - c Entonces
									Escribir "Error: los puntos deben estar entre 0 y ", 100 - c
								FinSi
							Hasta Que puntos >= 0 Y puntos <= 100 - c
							
							c <- c + puntos
							Escribir "La nueva nota del alumno 3 es: ", c
							
						4:
							Escribir "La nota actual del alumno 4 es: ", d
							Escribir "Puede agregar como maximo ", 100 - d, " puntos."
							
							Repetir
								Escribir "Ingrese la cantidad de puntos extras:"
								Leer puntos
								
								Si puntos < 0 O puntos > 100 - d Entonces
									Escribir "Error: los puntos deben estar entre 0 y ", 100 - d
								FinSi
							Hasta Que puntos >= 0 Y puntos <= 100 - d
							
							d <- d + puntos
							Escribir "La nueva nota del alumno 4 es: ", d
							
						5:
							Escribir "La nota actual del alumno 5 es: ", e
							Escribir "Puede agregar como maximo ", 100 - e, " puntos."
							
							Repetir
								Escribir "Ingrese la cantidad de puntos extras:"
								Leer puntos
								
								Si puntos < 0 O puntos > 100 - e Entonces
									Escribir "Error: los puntos deben estar entre 0 y ", 100 - e
								FinSi
							Hasta Que puntos >= 0 Y puntos <= 100 - e
							
							e <- e + puntos
							Escribir "La nueva nota del alumno 5 es: ", e
							
						De Otro Modo:
							Escribir "La opcion no es valida"
							
					FinSegun
					
				FinSi
				
			//Si ingresa el numero 5 finaliza el programa 	
			5:
				Escribir "Selecciono la opcion Salir"
				
			//si ingresa algo mas que no sea las opciones de 1 a 5 da error y vuelve a pedir queingrese la opcionn	
			De Otro Modo:
				Escribir "Selecciono una opcion invalida"
				
		FinSegun
		
	//finalixa en programa cuando ingrese 5	
	Hasta Que option = 5
	
FinAlgoritmo