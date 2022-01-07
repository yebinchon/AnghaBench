
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_keypad {int cols_en_mask; unsigned short rows_en_mask; scalar_t__ mmio_base; } ;


 scalar_t__ KPCR ;
 scalar_t__ KPDR ;
 int MAX_MATRIX_KEY_COLS ;
 unsigned short readw (scalar_t__) ;
 int udelay (int) ;
 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static void imx_keypad_scan_matrix(struct imx_keypad *keypad,
      unsigned short *matrix_volatile_state)
{
 int col;
 unsigned short reg_val;

 for (col = 0; col < MAX_MATRIX_KEY_COLS; col++) {
  if ((keypad->cols_en_mask & (1 << col)) == 0)
   continue;






  reg_val = readw(keypad->mmio_base + KPDR);
  reg_val |= 0xff00;
  writew(reg_val, keypad->mmio_base + KPDR);

  reg_val = readw(keypad->mmio_base + KPCR);
  reg_val &= ~((keypad->cols_en_mask & 0xff) << 8);
  writew(reg_val, keypad->mmio_base + KPCR);

  udelay(2);

  reg_val = readw(keypad->mmio_base + KPCR);
  reg_val |= (keypad->cols_en_mask & 0xff) << 8;
  writew(reg_val, keypad->mmio_base + KPCR);






  reg_val = readw(keypad->mmio_base + KPDR);
  reg_val &= ~(1 << (8 + col));
  writew(reg_val, keypad->mmio_base + KPDR);





  udelay(5);





  reg_val = readw(keypad->mmio_base + KPDR);
  matrix_volatile_state[col] = (~reg_val) & keypad->rows_en_mask;
 }





 reg_val = readw(keypad->mmio_base + KPDR);
 reg_val &= 0x00ff;
 writew(reg_val, keypad->mmio_base + KPDR);
}
