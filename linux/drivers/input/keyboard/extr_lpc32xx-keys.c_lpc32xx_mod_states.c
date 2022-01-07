
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lpc32xx_kscan_drv {int* lastkeystates; unsigned int* keymap; int row_shift; int kscan_base; struct input_dev* input; } ;
struct input_dev {int dummy; } ;


 int EV_MSC ;
 int LPC32XX_KS_DATA (int ,int) ;
 unsigned int MATRIX_SCAN_CODE (unsigned int,int,int ) ;
 int MSC_SCAN ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_report_key (struct input_dev*,unsigned int,int) ;
 int readl (int ) ;

__attribute__((used)) static void lpc32xx_mod_states(struct lpc32xx_kscan_drv *kscandat, int col)
{
 struct input_dev *input = kscandat->input;
 unsigned row, changed, scancode, keycode;
 u8 key;

 key = readl(LPC32XX_KS_DATA(kscandat->kscan_base, col));
 changed = key ^ kscandat->lastkeystates[col];
 kscandat->lastkeystates[col] = key;

 for (row = 0; changed; row++, changed >>= 1) {
  if (changed & 1) {

   scancode = MATRIX_SCAN_CODE(row, col,
          kscandat->row_shift);
   keycode = kscandat->keymap[scancode];
   input_event(input, EV_MSC, MSC_SCAN, scancode);
   input_report_key(input, keycode, key & (1 << row));
  }
 }
}
