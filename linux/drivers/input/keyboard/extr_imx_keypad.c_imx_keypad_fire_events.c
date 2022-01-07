
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; } ;
struct imx_keypad {int cols_en_mask; unsigned short* matrix_stable_state; int rows_en_mask; int * keycodes; struct input_dev* input_dev; } ;


 int EV_MSC ;
 int MATRIX_ROW_SHIFT ;
 int MATRIX_SCAN_CODE (int,int,int ) ;
 int MAX_MATRIX_KEY_COLS ;
 int MAX_MATRIX_KEY_ROWS ;
 int MSC_SCAN ;
 int dev_dbg (int *,char*,int ,unsigned short) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned short) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void imx_keypad_fire_events(struct imx_keypad *keypad,
       unsigned short *matrix_volatile_state)
{
 struct input_dev *input_dev = keypad->input_dev;
 int row, col;

 for (col = 0; col < MAX_MATRIX_KEY_COLS; col++) {
  unsigned short bits_changed;
  int code;

  if ((keypad->cols_en_mask & (1 << col)) == 0)
   continue;

  bits_changed = keypad->matrix_stable_state[col] ^
      matrix_volatile_state[col];

  if (bits_changed == 0)
   continue;

  for (row = 0; row < MAX_MATRIX_KEY_ROWS; row++) {
   if ((keypad->rows_en_mask & (1 << row)) == 0)
    continue;
   if ((bits_changed & (1 << row)) == 0)
    continue;

   code = MATRIX_SCAN_CODE(row, col, MATRIX_ROW_SHIFT);
   input_event(input_dev, EV_MSC, MSC_SCAN, code);
   input_report_key(input_dev, keypad->keycodes[code],
    matrix_volatile_state[col] & (1 << row));
   dev_dbg(&input_dev->dev, "Event code: %d, val: %d",
    keypad->keycodes[code],
    matrix_volatile_state[col] & (1 << row));
  }
 }
 input_sync(input_dev);
}
