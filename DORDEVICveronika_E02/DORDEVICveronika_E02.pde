// Veronika Dordevic - 202222157
// E2: Repetición

int cols = 3; // Número de columnas
int rows = 2; // Número de filas
int spacingX = 200; // Espaciado horizontal
int spacingY = 200; // Espaciado vertical

void setup() {
  size(600, 400); // Tamaño del lienzo
  background(#f9d6d5); // Fondo rosado

  // Bucle para dibujar el patrón de zorros
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      drawFox(i * spacingX + 100, j * spacingY + 100);
    }
  }
}

// Función para dibujar un zorro en una posición específica
void drawFox(int x, int y) {
  // Cola
  fill(255, 102, 0); // Naranja
  ellipse(x + 70, y + 40, 80, 120); // Cola
  fill(255); // Punta blanca de la cola
  ellipse(x + 70, y, 40, 50);

  // Cuerpo
  fill(255, 102, 0); // Naranja
  ellipse(x, y + 40, 100, 120); // Cuerpo
  
  // Barriga
  fill(255); // Blanco
  ellipse(x, y + 60, 60, 80);
  
  // Patas
  fill(139, 69, 19); // Café
  rect(x - 30, y + 90, 15, 30); // Pata izquierda
  rect(x + 15, y + 90, 15, 30); // Pata derecha

  // Cabeza
  fill(255, 102, 0); // Naranja
  triangle(x - 50, y - 60, x + 50, y - 60, x, y); // Cara
  
  // Orejas
  fill(255, 102, 0); // Naranja
  triangle(x - 60, y - 100, x - 25, y - 80, x - 45, y - 50); // Oreja izquierda
  triangle(x + 60, y - 100, x + 25, y - 80, x + 45, y - 50); // Oreja derecha

  // Parte interna de las orejas
  fill(255, 153, 102); // Naranja más claro
  triangle(x - 50, y - 90, x - 25, y - 75, x - 40, y - 50); // Oreja izquierda
  triangle(x + 50, y - 90, x + 25, y - 75, x + 40, y - 50); // Oreja derecha

  // Hocico
  fill(255); // Blanco
  triangle(x - 20, y - 20, x + 20, y - 20, x, y); 

  // Nariz
  fill(0); // Negro
  ellipse(x, y, 10, 10); 

  // Ojos
  fill(0); // Negro
  ellipse(x - 15, y - 40, 10, 10); // Ojo izquierdo
  ellipse(x + 15, y - 40, 10, 10); // Ojo derecho

  // Pupilas
  fill(255); // Blanco
  ellipse(x - 13, y - 42, 4, 4); // Pupila izquierda
  ellipse(x + 17, y - 42, 4, 4); // Pupila derecha
}
