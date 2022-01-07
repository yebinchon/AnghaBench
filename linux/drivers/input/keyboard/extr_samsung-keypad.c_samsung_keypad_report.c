
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_keypad {unsigned int cols; unsigned int* row_state; unsigned int rows; struct input_dev* input_dev; int * keycodes; int row_shift; } ;
struct input_dev {int dev; } ;


 int EV_MSC ;
 unsigned int MATRIX_SCAN_CODE (unsigned int,unsigned int,int ) ;
 int MSC_SCAN ;
 int dev_dbg (int *,char*,char*,unsigned int,unsigned int) ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,unsigned int) ;
 int input_sync (struct input_dev*) ;
 int memcpy (unsigned int*,unsigned int*,int) ;

__attribute__((used)) static bool samsung_keypad_report(struct samsung_keypad *keypad,
      unsigned int *row_state)
{
 struct input_dev *input_dev = keypad->input_dev;
 unsigned int changed;
 unsigned int pressed;
 unsigned int key_down = 0;
 unsigned int val;
 unsigned int col, row;

 for (col = 0; col < keypad->cols; col++) {
  changed = row_state[col] ^ keypad->row_state[col];
  key_down |= row_state[col];
  if (!changed)
   continue;

  for (row = 0; row < keypad->rows; row++) {
   if (!(changed & (1 << row)))
    continue;

   pressed = row_state[col] & (1 << row);

   dev_dbg(&keypad->input_dev->dev,
    "key %s, row: %d, col: %d\n",
    pressed ? "pressed" : "released", row, col);

   val = MATRIX_SCAN_CODE(row, col, keypad->row_shift);

   input_event(input_dev, EV_MSC, MSC_SCAN, val);
   input_report_key(input_dev,
     keypad->keycodes[val], pressed);
  }
  input_sync(keypad->input_dev);
 }

 memcpy(keypad->row_state, row_state, sizeof(keypad->row_state));

 return key_down;
}
