
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int BTN_TOUCH ;
 int EV_KEY ;
 int HID_UP_BUTTON ;
 int HID_USAGE_PAGE ;
 int hid_map_usage (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;

__attribute__((used)) static int accutouch_input_mapping(struct hid_device *hdev,
       struct hid_input *hi,
       struct hid_field *field,
       struct hid_usage *usage,
       unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_BUTTON) {
  hid_map_usage(hi, usage, bit, max, EV_KEY, BTN_TOUCH);
  return 1;
 }

 return 0;
}
