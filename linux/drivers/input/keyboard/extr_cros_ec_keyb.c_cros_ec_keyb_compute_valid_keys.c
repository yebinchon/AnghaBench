
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cros_ec_keyb {int row_shift; int cols; int rows; int* valid_keys; int dev; TYPE_1__* idev; } ;
struct TYPE_2__ {unsigned short* keycode; int keycodesize; } ;


 int BUG_ON (int) ;
 unsigned short KEY_BATTERY ;
 size_t MATRIX_SCAN_CODE (int,int,int) ;
 int dev_dbg (int ,char*,int,int) ;

__attribute__((used)) static void cros_ec_keyb_compute_valid_keys(struct cros_ec_keyb *ckdev)
{
 int row, col;
 int row_shift = ckdev->row_shift;
 unsigned short *keymap = ckdev->idev->keycode;
 unsigned short code;

 BUG_ON(ckdev->idev->keycodesize != sizeof(*keymap));

 for (col = 0; col < ckdev->cols; col++) {
  for (row = 0; row < ckdev->rows; row++) {
   code = keymap[MATRIX_SCAN_CODE(row, col, row_shift)];
   if (code && (code != KEY_BATTERY))
    ckdev->valid_keys[col] |= 1 << row;
  }
  dev_dbg(ckdev->dev, "valid_keys[%02d] = 0x%02x\n",
   col, ckdev->valid_keys[col]);
 }
}
