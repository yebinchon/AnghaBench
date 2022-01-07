
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct input_keymap_entry {int len; scalar_t__ scancode; } ;


 int EINVAL ;

int input_scancode_to_scalar(const struct input_keymap_entry *ke,
        unsigned int *scancode)
{
 switch (ke->len) {
 case 1:
  *scancode = *((u8 *)ke->scancode);
  break;

 case 2:
  *scancode = *((u16 *)ke->scancode);
  break;

 case 4:
  *scancode = *((u32 *)ke->scancode);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
