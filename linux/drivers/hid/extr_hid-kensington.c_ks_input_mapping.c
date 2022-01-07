
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int BTN_MIDDLE ;
 int BTN_SIDE ;
 int HID_UP_MSVENDOR ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int ks_map_key (int ) ;

__attribute__((used)) static int ks_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_MSVENDOR)
  return 0;

 switch (usage->hid & HID_USAGE) {
 case 0x01: ks_map_key(BTN_MIDDLE); break;
 case 0x02: ks_map_key(BTN_SIDE); break;
 default:
  return 0;
 }
 return 1;
}
