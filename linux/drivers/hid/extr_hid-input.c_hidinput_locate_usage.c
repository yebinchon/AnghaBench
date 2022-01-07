
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_keymap_entry {int flags; unsigned int index; } ;
struct hid_usage {int dummy; } ;
struct hid_device {int dummy; } ;


 int INPUT_KEYMAP_BY_INDEX ;
 struct hid_usage* hidinput_find_key (struct hid_device*,int ,unsigned int,unsigned int*) ;
 scalar_t__ input_scancode_to_scalar (struct input_keymap_entry const*,unsigned int*) ;
 int match_index ;
 int match_scancode ;

__attribute__((used)) static struct hid_usage *hidinput_locate_usage(struct hid_device *hid,
     const struct input_keymap_entry *ke,
     unsigned int *index)
{
 struct hid_usage *usage;
 unsigned int scancode;

 if (ke->flags & INPUT_KEYMAP_BY_INDEX)
  usage = hidinput_find_key(hid, match_index, ke->index, index);
 else if (input_scancode_to_scalar(ke, &scancode) == 0)
  usage = hidinput_find_key(hid, match_scancode, scancode, index);
 else
  usage = ((void*)0);

 return usage;
}
