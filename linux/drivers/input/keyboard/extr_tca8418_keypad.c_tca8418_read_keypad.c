
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tca8418_keypad {int row_shift; TYPE_1__* client; struct input_dev* input; } ;
struct input_dev {unsigned short* keycode; } ;
struct TYPE_2__ {int dev; } ;


 int EV_MSC ;
 int KEY_EVENT_CODE ;
 int KEY_EVENT_VALUE ;
 int MATRIX_SCAN_CODE (int,int,int ) ;
 int MSC_SCAN ;
 int REG_KEY_EVENT_A ;
 int TCA8418_MAX_COLS ;
 int dev_err (int *,char*) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,unsigned short,int) ;
 int input_sync (struct input_dev*) ;
 int tca8418_read_byte (struct tca8418_keypad*,int ,int*) ;

__attribute__((used)) static void tca8418_read_keypad(struct tca8418_keypad *keypad_data)
{
 struct input_dev *input = keypad_data->input;
 unsigned short *keymap = input->keycode;
 int error, col, row;
 u8 reg, state, code;

 do {
  error = tca8418_read_byte(keypad_data, REG_KEY_EVENT_A, &reg);
  if (error < 0) {
   dev_err(&keypad_data->client->dev,
    "unable to read REG_KEY_EVENT_A\n");
   break;
  }


  if (reg <= 0)
   break;

  state = reg & KEY_EVENT_VALUE;
  code = reg & KEY_EVENT_CODE;

  row = code / TCA8418_MAX_COLS;
  col = code % TCA8418_MAX_COLS;

  row = (col) ? row : row - 1;
  col = (col) ? col - 1 : TCA8418_MAX_COLS - 1;

  code = MATRIX_SCAN_CODE(row, col, keypad_data->row_shift);
  input_event(input, EV_MSC, MSC_SCAN, code);
  input_report_key(input, keymap[code], state);

 } while (1);

 input_sync(input);
}
