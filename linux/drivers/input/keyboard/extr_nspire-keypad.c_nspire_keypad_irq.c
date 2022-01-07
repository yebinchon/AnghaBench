
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef unsigned int u16 ;
struct nspire_keypad {int int_mask; unsigned int* state; scalar_t__ reg_base; int row_shift; scalar_t__ active_low; struct input_dev* input; } ;
struct input_dev {unsigned short* keycode; } ;
typedef int state ;
typedef int irqreturn_t ;


 int EV_MSC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KEYPAD_BITMASK_COLS ;
 int KEYPAD_BITMASK_ROWS ;
 scalar_t__ KEYPAD_DATA ;
 scalar_t__ KEYPAD_INT ;
 unsigned int MATRIX_SCAN_CODE (int,int,int ) ;
 int MSC_SCAN ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_report_key (struct input_dev*,unsigned short,unsigned int) ;
 int input_sync (struct input_dev*) ;
 int memcpy_fromio (unsigned int*,scalar_t__,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t nspire_keypad_irq(int irq, void *dev_id)
{
 struct nspire_keypad *keypad = dev_id;
 struct input_dev *input = keypad->input;
 unsigned short *keymap = input->keycode;
 unsigned int code;
 int row, col;
 u32 int_sts;
 u16 state[8];
 u16 bits, changed;

 int_sts = readl(keypad->reg_base + KEYPAD_INT) & keypad->int_mask;
 if (!int_sts)
  return IRQ_NONE;

 memcpy_fromio(state, keypad->reg_base + KEYPAD_DATA, sizeof(state));

 for (row = 0; row < KEYPAD_BITMASK_ROWS; row++) {
  bits = state[row];
  if (keypad->active_low)
   bits = ~bits;

  changed = bits ^ keypad->state[row];
  if (!changed)
   continue;

  keypad->state[row] = bits;

  for (col = 0; col < KEYPAD_BITMASK_COLS; col++) {
   if (!(changed & (1U << col)))
    continue;

   code = MATRIX_SCAN_CODE(row, col, keypad->row_shift);
   input_event(input, EV_MSC, MSC_SCAN, code);
   input_report_key(input, keymap[code],
      bits & (1U << col));
  }
 }

 input_sync(input);

 writel(0x3, keypad->reg_base + KEYPAD_INT);

 return IRQ_HANDLED;
}
