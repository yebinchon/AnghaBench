
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int BTN_MOUSE ;
 int HID_UP_CONSUMER ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int ez_map_key (int ) ;
 int ez_map_rel (int ) ;

__attribute__((used)) static int ez_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_CONSUMER)
  return 0;

 switch (usage->hid & HID_USAGE) {
 case 0x230: ez_map_key(BTN_MOUSE); break;
 case 0x231: ez_map_rel(REL_WHEEL); break;





 case 0x232: ez_map_rel(REL_HWHEEL); break;
 default:
  return 0;
 }
 return 1;
}
