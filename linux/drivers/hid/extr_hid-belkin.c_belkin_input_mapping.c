
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 unsigned long BELKIN_WKBD ;
 int HID_UP_CONSUMER ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_CAMERA ;
 int KEY_DOCUMENTS ;
 int KEY_SOUND ;
 int belkin_map_key_clear (int ) ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int belkin_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 unsigned long quirks = (unsigned long)hid_get_drvdata(hdev);

 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_CONSUMER ||
   !(quirks & BELKIN_WKBD))
  return 0;

 switch (usage->hid & HID_USAGE) {
 case 0x03a: belkin_map_key_clear(KEY_SOUND); break;
 case 0x03b: belkin_map_key_clear(KEY_CAMERA); break;
 case 0x03c: belkin_map_key_clear(KEY_DOCUMENTS); break;
 default:
  return 0;
 }
 return 1;
}
