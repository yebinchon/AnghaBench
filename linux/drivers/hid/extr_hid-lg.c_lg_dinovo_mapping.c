
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;


 int HID_UP_LOGIVENDOR ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_MEDIA ;
 int lg_map_key_clear (int ) ;

__attribute__((used)) static int lg_dinovo_mapping(struct hid_input *hi, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_LOGIVENDOR)
  return 0;

 switch (usage->hid & HID_USAGE) {

 case 0x00d: lg_map_key_clear(KEY_MEDIA); break;
 default:
  return 0;

 }
 return 1;
}
