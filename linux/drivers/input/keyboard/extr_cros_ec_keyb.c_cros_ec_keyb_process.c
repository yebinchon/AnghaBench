
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct input_dev {unsigned short* keycode; } ;
struct cros_ec_keyb {int cols; int rows; int* old_kb_state; struct input_dev* idev; int dev; int row_shift; scalar_t__ ghost_filter; } ;


 int MATRIX_SCAN_CODE (int,int,int ) ;
 scalar_t__ cros_ec_keyb_has_ghosting (struct cros_ec_keyb*,int*) ;
 int dev_dbg (int ,char*,...) ;
 int input_report_key (struct input_dev*,unsigned short const,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void cros_ec_keyb_process(struct cros_ec_keyb *ckdev,
    uint8_t *kb_state, int len)
{
 struct input_dev *idev = ckdev->idev;
 int col, row;
 int new_state;
 int old_state;

 if (ckdev->ghost_filter && cros_ec_keyb_has_ghosting(ckdev, kb_state)) {





  dev_dbg(ckdev->dev, "ghosting found\n");
  return;
 }

 for (col = 0; col < ckdev->cols; col++) {
  for (row = 0; row < ckdev->rows; row++) {
   int pos = MATRIX_SCAN_CODE(row, col, ckdev->row_shift);
   const unsigned short *keycodes = idev->keycode;

   new_state = kb_state[col] & (1 << row);
   old_state = ckdev->old_kb_state[col] & (1 << row);
   if (new_state != old_state) {
    dev_dbg(ckdev->dev,
     "changed: [r%d c%d]: byte %02x\n",
     row, col, new_state);

    input_report_key(idev, keycodes[pos],
       new_state);
   }
  }
  ckdev->old_kb_state[col] = kb_state[col];
 }
 input_sync(ckdev->idev);
}
