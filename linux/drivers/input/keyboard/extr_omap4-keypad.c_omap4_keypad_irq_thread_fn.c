
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap4_keypad {unsigned char* key_state; unsigned int rows; unsigned int cols; int * keymap; int row_shift; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (unsigned char*) ;
 int EV_MSC ;
 int IRQ_HANDLED ;
 unsigned int MATRIX_SCAN_CODE (unsigned int,unsigned int,int ) ;
 int MSC_SCAN ;
 int OMAP4_KBD_FULLCODE31_0 ;
 int OMAP4_KBD_FULLCODE63_32 ;
 int OMAP4_KBD_IRQSTATUS ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int kbd_read_irqreg (struct omap4_keypad*,int ) ;
 int kbd_readl (struct omap4_keypad*,int ) ;
 int kbd_write_irqreg (struct omap4_keypad*,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static irqreturn_t omap4_keypad_irq_thread_fn(int irq, void *dev_id)
{
 struct omap4_keypad *keypad_data = dev_id;
 struct input_dev *input_dev = keypad_data->input;
 unsigned char key_state[ARRAY_SIZE(keypad_data->key_state)];
 unsigned int col, row, code, changed;
 u32 *new_state = (u32 *) key_state;

 *new_state = kbd_readl(keypad_data, OMAP4_KBD_FULLCODE31_0);
 *(new_state + 1) = kbd_readl(keypad_data, OMAP4_KBD_FULLCODE63_32);

 for (row = 0; row < keypad_data->rows; row++) {
  changed = key_state[row] ^ keypad_data->key_state[row];
  if (!changed)
   continue;

  for (col = 0; col < keypad_data->cols; col++) {
   if (changed & (1 << col)) {
    code = MATRIX_SCAN_CODE(row, col,
      keypad_data->row_shift);
    input_event(input_dev, EV_MSC, MSC_SCAN, code);
    input_report_key(input_dev,
       keypad_data->keymap[code],
       key_state[row] & (1 << col));
   }
  }
 }

 input_sync(input_dev);

 memcpy(keypad_data->key_state, key_state,
  sizeof(keypad_data->key_state));


 kbd_write_irqreg(keypad_data, OMAP4_KBD_IRQSTATUS,
    kbd_read_irqreg(keypad_data, OMAP4_KBD_IRQSTATUS));

 return IRQ_HANDLED;
}
