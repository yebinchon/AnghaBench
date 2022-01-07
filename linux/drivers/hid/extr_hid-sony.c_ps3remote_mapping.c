
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {unsigned int hid; int collection_index; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int EV_KEY ;
 int HID_UP_BUTTON ;
 unsigned int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int hid_map_usage_clear (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,unsigned int) ;
 unsigned int* ps3remote_keymap_joypad_buttons ;
 unsigned int* ps3remote_keymap_remote_buttons ;

__attribute__((used)) static int ps3remote_mapping(struct hid_device *hdev, struct hid_input *hi,
        struct hid_field *field, struct hid_usage *usage,
        unsigned long **bit, int *max)
{
 unsigned int key = usage->hid & HID_USAGE;

 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_BUTTON)
  return -1;

 switch (usage->collection_index) {
 case 1:
  if (key >= ARRAY_SIZE(ps3remote_keymap_joypad_buttons))
   return -1;

  key = ps3remote_keymap_joypad_buttons[key];
  if (!key)
   return -1;
  break;
 case 2:
  if (key >= ARRAY_SIZE(ps3remote_keymap_remote_buttons))
   return -1;

  key = ps3remote_keymap_remote_buttons[key];
  if (!key)
   return -1;
  break;
 default:
  return -1;
 }

 hid_map_usage_clear(hi, usage, bit, max, EV_KEY, key);
 return 1;
}
