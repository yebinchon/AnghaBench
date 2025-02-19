
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmpe_keypad {scalar_t__* keymap; int rows; int cols; } ;


 scalar_t__ KEY_RESERVED ;
 int MATRIX_SCAN_CODE (int,int,int ) ;
 int STMPE_KEYPAD_ROW_SHIFT ;

__attribute__((used)) static void stmpe_keypad_fill_used_pins(struct stmpe_keypad *keypad,
     u32 used_rows, u32 used_cols)
{
 int row, col;

 for (row = 0; row < used_rows; row++) {
  for (col = 0; col < used_cols; col++) {
   int code = MATRIX_SCAN_CODE(row, col,
          STMPE_KEYPAD_ROW_SHIFT);
   if (keypad->keymap[code] != KEY_RESERVED) {
    keypad->rows |= 1 << row;
    keypad->cols |= 1 << col;
   }
  }
 }
}
