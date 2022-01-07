
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_field {int flags; TYPE_1__* usage; } ;
struct TYPE_2__ {unsigned int hid; } ;


 int HID_MAIN_ITEM_CONSTANT ;
 int HID_MAIN_ITEM_VARIABLE ;

__attribute__((used)) static void mt_fix_const_field(struct hid_field *field, unsigned int usage)
{
 if (field->usage[0].hid != usage ||
     !(field->flags & HID_MAIN_ITEM_CONSTANT))
  return;

 field->flags &= ~HID_MAIN_ITEM_CONSTANT;
 field->flags |= HID_MAIN_ITEM_VARIABLE;
}
