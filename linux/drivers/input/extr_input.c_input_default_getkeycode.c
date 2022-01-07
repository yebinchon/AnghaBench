
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_keymap_entry {int flags; unsigned int index; int len; int scancode; int keycode; } ;
struct input_dev {unsigned int keycodemax; int keycodesize; } ;
typedef int index ;


 int EINVAL ;
 int INPUT_KEYMAP_BY_INDEX ;
 int input_fetch_keycode (struct input_dev*,unsigned int) ;
 int input_scancode_to_scalar (struct input_keymap_entry*,unsigned int*) ;
 int memcpy (int ,unsigned int*,int) ;

__attribute__((used)) static int input_default_getkeycode(struct input_dev *dev,
        struct input_keymap_entry *ke)
{
 unsigned int index;
 int error;

 if (!dev->keycodesize)
  return -EINVAL;

 if (ke->flags & INPUT_KEYMAP_BY_INDEX)
  index = ke->index;
 else {
  error = input_scancode_to_scalar(ke, &index);
  if (error)
   return error;
 }

 if (index >= dev->keycodemax)
  return -EINVAL;

 ke->keycode = input_fetch_keycode(dev, index);
 ke->index = index;
 ke->len = sizeof(index);
 memcpy(ke->scancode, &index, sizeof(index));

 return 0;
}
