
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry {scalar_t__ type; } ;
struct input_dev {struct key_entry* keycode; } ;


 scalar_t__ KE_END ;
 scalar_t__ KE_KEY ;

__attribute__((used)) static struct key_entry *sparse_keymap_entry_by_index(struct input_dev *dev,
            unsigned int index)
{
 struct key_entry *key;
 unsigned int key_cnt = 0;

 for (key = dev->keycode; key->type != KE_END; key++)
  if (key->type == KE_KEY)
   if (key_cnt++ == index)
    return key;

 return ((void*)0);
}
