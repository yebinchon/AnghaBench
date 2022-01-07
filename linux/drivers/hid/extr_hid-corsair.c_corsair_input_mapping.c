
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;







 int CORSAIR_USAGE_SPECIAL_MAX ;
 int CORSAIR_USAGE_SPECIAL_MIN ;
 int EV_KEY ;
 int HID_UP_KEYBOARD ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int * corsair_gkey_map ;
 int * corsair_profile_keycodes ;
 int * corsair_record_keycodes ;
 int corsair_usage_to_gkey (int) ;
 int hid_map_usage_clear (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;

__attribute__((used)) static int corsair_input_mapping(struct hid_device *dev,
     struct hid_input *input,
     struct hid_field *field,
     struct hid_usage *usage, unsigned long **bit,
     int *max)
{
 int gkey;

 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_KEYBOARD)
  return 0;

 gkey = corsair_usage_to_gkey(usage->hid & HID_USAGE);
 if (gkey != 0) {
  hid_map_usage_clear(input, usage, bit, max, EV_KEY,
        corsair_gkey_map[gkey - 1]);
  return 1;
 }
 if ((usage->hid & HID_USAGE) >= CORSAIR_USAGE_SPECIAL_MIN &&
     (usage->hid & HID_USAGE) <= CORSAIR_USAGE_SPECIAL_MAX) {
  switch (usage->hid & HID_USAGE) {
  case 129:
   hid_map_usage_clear(input, usage, bit, max, EV_KEY,
         corsair_record_keycodes[0]);
   return 1;

  case 128:
   hid_map_usage_clear(input, usage, bit, max, EV_KEY,
         corsair_record_keycodes[1]);
   return 1;

  case 132:
   hid_map_usage_clear(input, usage, bit, max, EV_KEY,
         corsair_profile_keycodes[0]);
   return 1;

  case 131:
   hid_map_usage_clear(input, usage, bit, max, EV_KEY,
         corsair_profile_keycodes[1]);
   return 1;

  case 130:
   hid_map_usage_clear(input, usage, bit, max, EV_KEY,
         corsair_profile_keycodes[2]);
   return 1;

  default:
   return -1;
  }
 }

 return 0;
}
