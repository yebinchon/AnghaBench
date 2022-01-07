
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa27x_keypad_platform_data {int direct_key_num; unsigned short* direct_key_map; unsigned short rotary0_up_key; unsigned short rotary0_down_key; unsigned short rotary0_rel_code; unsigned short rotary1_up_key; unsigned short rotary1_down_key; unsigned short rotary1_rel_code; scalar_t__ enable_rotary1; scalar_t__ enable_rotary0; int matrix_key_cols; int matrix_key_rows; int matrix_keymap_data; } ;
struct pxa27x_keypad {unsigned short* keycodes; int* rotary_rel_code; struct input_dev* input_dev; struct pxa27x_keypad_platform_data* pdata; } ;
struct input_dev {int keybit; int relbit; int keycodemax; } ;


 int ARRAY_SIZE (unsigned short*) ;
 int KEY_RESERVED ;
 int MAX_MATRIX_KEY_NUM ;
 int __clear_bit (int ,int ) ;
 int __set_bit (unsigned short,int ) ;
 int matrix_keypad_build_keymap (int ,int *,int ,int ,unsigned short*,struct input_dev*) ;

__attribute__((used)) static int pxa27x_keypad_build_keycode(struct pxa27x_keypad *keypad)
{
 const struct pxa27x_keypad_platform_data *pdata = keypad->pdata;
 struct input_dev *input_dev = keypad->input_dev;
 unsigned short keycode;
 int i;
 int error;

 error = matrix_keypad_build_keymap(pdata->matrix_keymap_data, ((void*)0),
        pdata->matrix_key_rows,
        pdata->matrix_key_cols,
        keypad->keycodes, input_dev);
 if (error)
  return error;





 input_dev->keycodemax = ARRAY_SIZE(keypad->keycodes);


 for (i = 0; i < pdata->direct_key_num; i++) {
  keycode = pdata->direct_key_map[i];
  keypad->keycodes[MAX_MATRIX_KEY_NUM + i] = keycode;
  __set_bit(keycode, input_dev->keybit);
 }

 if (pdata->enable_rotary0) {
  if (pdata->rotary0_up_key && pdata->rotary0_down_key) {
   keycode = pdata->rotary0_up_key;
   keypad->keycodes[MAX_MATRIX_KEY_NUM + 0] = keycode;
   __set_bit(keycode, input_dev->keybit);

   keycode = pdata->rotary0_down_key;
   keypad->keycodes[MAX_MATRIX_KEY_NUM + 1] = keycode;
   __set_bit(keycode, input_dev->keybit);

   keypad->rotary_rel_code[0] = -1;
  } else {
   keypad->rotary_rel_code[0] = pdata->rotary0_rel_code;
   __set_bit(pdata->rotary0_rel_code, input_dev->relbit);
  }
 }

 if (pdata->enable_rotary1) {
  if (pdata->rotary1_up_key && pdata->rotary1_down_key) {
   keycode = pdata->rotary1_up_key;
   keypad->keycodes[MAX_MATRIX_KEY_NUM + 2] = keycode;
   __set_bit(keycode, input_dev->keybit);

   keycode = pdata->rotary1_down_key;
   keypad->keycodes[MAX_MATRIX_KEY_NUM + 3] = keycode;
   __set_bit(keycode, input_dev->keybit);

   keypad->rotary_rel_code[1] = -1;
  } else {
   keypad->rotary_rel_code[1] = pdata->rotary1_rel_code;
   __set_bit(pdata->rotary1_rel_code, input_dev->relbit);
  }
 }

 __clear_bit(KEY_RESERVED, input_dev->keybit);

 return 0;
}
