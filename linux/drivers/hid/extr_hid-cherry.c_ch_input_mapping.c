
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_UP_CONSUMER ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_PROG1 ;
 int KEY_PROG2 ;
 int KEY_PROG3 ;
 int ch_map_key_clear (int ) ;

__attribute__((used)) static int ch_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_CONSUMER)
  return 0;

 switch (usage->hid & HID_USAGE) {
 case 0x301: ch_map_key_clear(KEY_PROG1); break;
 case 0x302: ch_map_key_clear(KEY_PROG2); break;
 case 0x303: ch_map_key_clear(KEY_PROG3); break;
 default:
  return 0;
 }

 return 1;
}
