
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry {int dummy; } ;
struct input_keymap_entry {int flags; int index; } ;
struct input_dev {int dummy; } ;


 int INPUT_KEYMAP_BY_INDEX ;
 scalar_t__ input_scancode_to_scalar (struct input_keymap_entry const*,unsigned int*) ;
 struct key_entry* sparse_keymap_entry_by_index (struct input_dev*,int ) ;
 struct key_entry* sparse_keymap_entry_from_scancode (struct input_dev*,unsigned int) ;

__attribute__((used)) static struct key_entry *sparse_keymap_locate(struct input_dev *dev,
     const struct input_keymap_entry *ke)
{
 struct key_entry *key;
 unsigned int scancode;

 if (ke->flags & INPUT_KEYMAP_BY_INDEX)
  key = sparse_keymap_entry_by_index(dev, ke->index);
 else if (input_scancode_to_scalar(ke, &scancode) == 0)
  key = sparse_keymap_entry_from_scancode(dev, scancode);
 else
  key = ((void*)0);

 return key;
}
