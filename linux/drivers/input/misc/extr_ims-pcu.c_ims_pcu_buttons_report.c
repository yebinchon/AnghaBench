
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct input_dev {int dummy; } ;
struct ims_pcu_buttons {unsigned short* keymap; struct input_dev* input; } ;
struct ims_pcu {struct ims_pcu_buttons buttons; } ;


 unsigned short KEY_RESERVED ;
 int input_report_key (struct input_dev*,unsigned short,unsigned long) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void ims_pcu_buttons_report(struct ims_pcu *pcu, u32 data)
{
 struct ims_pcu_buttons *buttons = &pcu->buttons;
 struct input_dev *input = buttons->input;
 int i;

 for (i = 0; i < 32; i++) {
  unsigned short keycode = buttons->keymap[i];

  if (keycode != KEY_RESERVED)
   input_report_key(input, keycode, data & (1UL << i));
 }

 input_sync(input);
}
