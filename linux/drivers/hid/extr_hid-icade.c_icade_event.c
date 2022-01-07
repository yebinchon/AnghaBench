
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icade_key {int press; int to; } ;
struct hid_usage {int hid; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
typedef int __s32 ;
struct TYPE_2__ {int input; } ;


 int HID_CLAIMED_INPUT ;
 int HID_USAGE ;
 struct icade_key* icade_find_translation (int) ;
 int input_event (int ,int ,int ,int ) ;

__attribute__((used)) static int icade_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 const struct icade_key *trans;

 if (!(hdev->claimed & HID_CLAIMED_INPUT) || !field->hidinput ||
   !usage->type)
  return 0;


 if (!value)
  return 1;

 trans = icade_find_translation(usage->hid & HID_USAGE);

 if (!trans)
  return 1;

 input_event(field->hidinput->input, usage->type,
   trans->to, trans->press);

 return 1;
}
