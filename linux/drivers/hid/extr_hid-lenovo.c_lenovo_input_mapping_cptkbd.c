
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int flags; int logical_minimum; int logical_maximum; } ;
struct hid_device {int dummy; } ;


 int BTN_MIDDLE ;
 int EV_REL ;
 int HID_GD_WHEEL ;
 int HID_MAIN_ITEM_RELATIVE ;
 int HID_MAIN_ITEM_VARIABLE ;
 int HID_UP_BUTTON ;
 int HID_UP_CONSUMER ;
 int HID_UP_LNVENDOR ;
 int HID_UP_MSVENDOR ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_BRIGHTNESSDOWN ;
 int KEY_BRIGHTNESSUP ;
 int KEY_CONFIG ;
 int KEY_FILE ;
 int KEY_FN_ESC ;
 int KEY_MICMUTE ;
 int KEY_SCALE ;
 int KEY_SWITCHVIDEOMODE ;
 int KEY_WLAN ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int hid_map_usage (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;
 int map_key_clear (int ) ;

__attribute__((used)) static int lenovo_input_mapping_cptkbd(struct hid_device *hdev,
  struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit, int *max)
{

 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_MSVENDOR ||
     (usage->hid & HID_USAGE_PAGE) == HID_UP_LNVENDOR) {
  switch (usage->hid & HID_USAGE) {
  case 0x00f1:
   map_key_clear(KEY_MICMUTE);
   return 1;
  case 0x00f2:
   map_key_clear(KEY_BRIGHTNESSDOWN);
   return 1;
  case 0x00f3:
   map_key_clear(KEY_BRIGHTNESSUP);
   return 1;
  case 0x00f4:
   map_key_clear(KEY_SWITCHVIDEOMODE);
   return 1;
  case 0x00f5:
   map_key_clear(KEY_WLAN);
   return 1;
  case 0x00f6:
   map_key_clear(KEY_CONFIG);
   return 1;
  case 0x00f8:
   map_key_clear(KEY_SCALE);
   return 1;
  case 0x00f9:

   map_key_clear(KEY_FILE);
   return 1;
  case 0x00fa:
   map_key_clear(KEY_FN_ESC);
   return 1;
  case 0x00fb:
   map_key_clear(BTN_MIDDLE);
   return 1;
  }
 }


 if (usage->hid == HID_GD_WHEEL)
  return -1;
 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_BUTTON &&
   (usage->hid & HID_USAGE) == 0x003)
  return -1;
 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_CONSUMER &&
   (usage->hid & HID_USAGE) == 0x238)
  return -1;


 if ((usage->hid & HID_USAGE_PAGE) == 0xff100000 ||
     (usage->hid & HID_USAGE_PAGE) == 0xffa10000) {
  field->flags |= HID_MAIN_ITEM_RELATIVE | HID_MAIN_ITEM_VARIABLE;
  field->logical_minimum = -127;
  field->logical_maximum = 127;

  switch (usage->hid & HID_USAGE) {
  case 0x0000:
   hid_map_usage(hi, usage, bit, max, EV_REL, REL_HWHEEL);
   return 1;
  case 0x0001:
   hid_map_usage(hi, usage, bit, max, EV_REL, REL_WHEEL);
   return 1;
  default:
   return -1;
  }
 }

 return 0;
}
