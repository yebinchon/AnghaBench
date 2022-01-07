
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_value {unsigned int member_1; int member_2; int member_0; } ;
struct input_keymap_entry {scalar_t__ keycode; } ;
struct input_dev {int (* setkeycode ) (struct input_dev*,struct input_keymap_entry const*,unsigned int*) ;int event_lock; int key; int keybit; int evbit; } ;


 int ARRAY_SIZE (struct input_value*) ;
 int EINVAL ;
 int EV_KEY ;
 scalar_t__ KEY_MAX ;
 int KEY_RESERVED ;
 int __clear_bit (int ,int ) ;
 scalar_t__ __test_and_clear_bit (unsigned int,int ) ;
 int input_pass_values (struct input_dev*,struct input_value*,int ) ;
 struct input_value input_value_sync ;
 int is_event_supported (unsigned int,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct input_dev*,struct input_keymap_entry const*,unsigned int*) ;
 scalar_t__ test_bit (int ,int ) ;

int input_set_keycode(struct input_dev *dev,
        const struct input_keymap_entry *ke)
{
 unsigned long flags;
 unsigned int old_keycode;
 int retval;

 if (ke->keycode > KEY_MAX)
  return -EINVAL;

 spin_lock_irqsave(&dev->event_lock, flags);

 retval = dev->setkeycode(dev, ke, &old_keycode);
 if (retval)
  goto out;


 __clear_bit(KEY_RESERVED, dev->keybit);





 if (test_bit(EV_KEY, dev->evbit) &&
     !is_event_supported(old_keycode, dev->keybit, KEY_MAX) &&
     __test_and_clear_bit(old_keycode, dev->key)) {
  struct input_value vals[] = {
   { EV_KEY, old_keycode, 0 },
   input_value_sync
  };

  input_pass_values(dev, vals, ARRAY_SIZE(vals));
 }

 out:
 spin_unlock_irqrestore(&dev->event_lock, flags);

 return retval;
}
