
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; } ;
struct apple_key_translation {int to; scalar_t__ from; } ;


 int KEY_NUMLOCK ;
 struct apple_key_translation* apple_fn_keys ;
 struct apple_key_translation* apple_iso_keyboard ;
 struct apple_key_translation* powerbook_fn_keys ;
 struct apple_key_translation* powerbook_numlock_keys ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void apple_setup_input(struct input_dev *input)
{
 const struct apple_key_translation *trans;

 set_bit(KEY_NUMLOCK, input->keybit);


 for (trans = apple_fn_keys; trans->from; trans++)
  set_bit(trans->to, input->keybit);

 for (trans = powerbook_fn_keys; trans->from; trans++)
  set_bit(trans->to, input->keybit);

 for (trans = powerbook_numlock_keys; trans->from; trans++)
  set_bit(trans->to, input->keybit);

 for (trans = apple_iso_keyboard; trans->from; trans++)
  set_bit(trans->to, input->keybit);
}
