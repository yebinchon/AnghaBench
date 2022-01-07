
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct key_entry {scalar_t__ type; } const key_entry ;
struct input_dev {struct key_entry const* keycode; } ;


 scalar_t__ KE_END ;
 scalar_t__ KE_KEY ;

__attribute__((used)) static unsigned int sparse_keymap_get_key_index(struct input_dev *dev,
      const struct key_entry *k)
{
 struct key_entry *key;
 unsigned int idx = 0;

 for (key = dev->keycode; key->type != KE_END; key++) {
  if (key->type == KE_KEY) {
   if (key == k)
    break;
   idx++;
  }
 }

 return idx;
}
