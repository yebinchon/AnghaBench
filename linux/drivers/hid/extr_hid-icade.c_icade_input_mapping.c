
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icade_key {int to; } ;
struct hid_usage {int hid; } ;
struct hid_input {TYPE_1__* input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int keybit; } ;


 int EV_KEY ;
 int HID_UP_KEYBOARD ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int hid_map_usage (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;
 struct icade_key* icade_find_translation (int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int icade_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 const struct icade_key *trans;

 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_KEYBOARD) {
  trans = icade_find_translation(usage->hid & HID_USAGE);

  if (!trans)
   return -1;

  hid_map_usage(hi, usage, bit, max, EV_KEY, trans->to);
  set_bit(trans->to, hi->input->keybit);

  return 1;
 }


 return -1;

}
