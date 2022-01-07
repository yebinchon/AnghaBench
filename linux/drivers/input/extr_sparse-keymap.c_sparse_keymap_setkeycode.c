
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry {scalar_t__ type; unsigned int keycode; } ;
struct input_keymap_entry {unsigned int keycode; } ;
struct input_dev {int keybit; scalar_t__ keycode; } ;


 int EINVAL ;
 scalar_t__ KE_KEY ;
 int clear_bit (unsigned int,int ) ;
 int set_bit (unsigned int,int ) ;
 int sparse_keymap_entry_from_keycode (struct input_dev*,unsigned int) ;
 struct key_entry* sparse_keymap_locate (struct input_dev*,struct input_keymap_entry const*) ;

__attribute__((used)) static int sparse_keymap_setkeycode(struct input_dev *dev,
        const struct input_keymap_entry *ke,
        unsigned int *old_keycode)
{
 struct key_entry *key;

 if (dev->keycode) {
  key = sparse_keymap_locate(dev, ke);
  if (key && key->type == KE_KEY) {
   *old_keycode = key->keycode;
   key->keycode = ke->keycode;
   set_bit(ke->keycode, dev->keybit);
   if (!sparse_keymap_entry_from_keycode(dev, *old_keycode))
    clear_bit(*old_keycode, dev->keybit);
   return 0;
  }
 }

 return -EINVAL;
}
