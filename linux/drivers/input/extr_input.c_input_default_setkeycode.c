
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct input_keymap_entry {int flags; unsigned int index; int keycode; } ;
struct input_dev {int keycodesize; unsigned int keycodemax; int keybit; scalar_t__ keycode; } ;


 int EINVAL ;
 int INPUT_KEYMAP_BY_INDEX ;
 int __clear_bit (unsigned int,int ) ;
 int __set_bit (unsigned int,int ) ;
 unsigned int input_fetch_keycode (struct input_dev*,int) ;
 int input_scancode_to_scalar (struct input_keymap_entry const*,unsigned int*) ;

__attribute__((used)) static int input_default_setkeycode(struct input_dev *dev,
        const struct input_keymap_entry *ke,
        unsigned int *old_keycode)
{
 unsigned int index;
 int error;
 int i;

 if (!dev->keycodesize)
  return -EINVAL;

 if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
  index = ke->index;
 } else {
  error = input_scancode_to_scalar(ke, &index);
  if (error)
   return error;
 }

 if (index >= dev->keycodemax)
  return -EINVAL;

 if (dev->keycodesize < sizeof(ke->keycode) &&
   (ke->keycode >> (dev->keycodesize * 8)))
  return -EINVAL;

 switch (dev->keycodesize) {
  case 1: {
   u8 *k = (u8 *)dev->keycode;
   *old_keycode = k[index];
   k[index] = ke->keycode;
   break;
  }
  case 2: {
   u16 *k = (u16 *)dev->keycode;
   *old_keycode = k[index];
   k[index] = ke->keycode;
   break;
  }
  default: {
   u32 *k = (u32 *)dev->keycode;
   *old_keycode = k[index];
   k[index] = ke->keycode;
   break;
  }
 }

 __clear_bit(*old_keycode, dev->keybit);
 __set_bit(ke->keycode, dev->keybit);

 for (i = 0; i < dev->keycodemax; i++) {
  if (input_fetch_keycode(dev, i) == *old_keycode) {
   __set_bit(*old_keycode, dev->keybit);
   break;
  }
 }

 return 0;
}
