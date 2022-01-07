
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {int hid; } ;
struct hid_input {TYPE_1__* input; } ;
struct hid_field {int application; } ;
struct hid_device {int dummy; } ;
struct asus_drvdata {int quirks; int enable_backlight; } ;
struct TYPE_2__ {int evbit; } ;


 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_4 ;
 int BTN_5 ;
 int BTN_6 ;
 int BTN_7 ;
 int BTN_8 ;
 int BTN_9 ;
 int BTN_A ;
 int BTN_B ;
 int EV_REP ;
 int HID_GD_MOUSE ;
 int HID_UP_BUTTON ;
 int HID_UP_CONSUMER ;
 int HID_UP_GENDESK ;
 int HID_UP_GENDEVCTRLS ;
 int HID_UP_MSVENDOR ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_BRIGHTNESSDOWN ;
 int KEY_BRIGHTNESSUP ;
 int KEY_CALC ;
 int KEY_CAMERA ;
 int KEY_DISPLAY_OFF ;
 int KEY_F21 ;
 int KEY_KBDILLUMDOWN ;
 int KEY_KBDILLUMUP ;
 int KEY_MICMUTE ;
 int KEY_PROG1 ;
 int KEY_PROG2 ;
 int KEY_PROG3 ;
 int KEY_PROG4 ;
 int KEY_RFKILL ;
 int KEY_SLEEP ;
 int KEY_WLAN ;
 int QUIRK_NO_CONSUMER_USAGES ;
 int QUIRK_SKIP_INPUT_MAPPING ;
 int QUIRK_T100CHI ;
 int QUIRK_T90CHI ;
 int QUIRK_USE_KBD_BACKLIGHT ;
 int asus_map_key_clear (int ) ;
 struct asus_drvdata* hid_get_drvdata (struct hid_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int asus_input_mapping(struct hid_device *hdev,
  struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit,
  int *max)
{
 struct asus_drvdata *drvdata = hid_get_drvdata(hdev);

 if (drvdata->quirks & QUIRK_SKIP_INPUT_MAPPING) {



  return -1;
 }






 if (drvdata->quirks & (QUIRK_T100CHI | QUIRK_T90CHI)) {
  if (field->application == (HID_UP_GENDESK | 0x0080) ||
      usage->hid == (HID_UP_GENDEVCTRLS | 0x0024) ||
      usage->hid == (HID_UP_GENDEVCTRLS | 0x0025) ||
      usage->hid == (HID_UP_GENDEVCTRLS | 0x0026))
   return -1;




  if (field->application == HID_GD_MOUSE &&
      usage->hid != (HID_UP_BUTTON | 1))
   return -1;
 }


 if ((usage->hid & HID_USAGE_PAGE) == 0xff310000) {
  set_bit(EV_REP, hi->input->evbit);
  switch (usage->hid & HID_USAGE) {
  case 0x10: asus_map_key_clear(KEY_BRIGHTNESSDOWN); break;
  case 0x20: asus_map_key_clear(KEY_BRIGHTNESSUP); break;
  case 0x35: asus_map_key_clear(KEY_DISPLAY_OFF); break;
  case 0x6c: asus_map_key_clear(KEY_SLEEP); break;
  case 0x7c: asus_map_key_clear(KEY_MICMUTE); break;
  case 0x82: asus_map_key_clear(KEY_CAMERA); break;
  case 0x88: asus_map_key_clear(KEY_RFKILL); break;
  case 0xb5: asus_map_key_clear(KEY_CALC); break;
  case 0xc4: asus_map_key_clear(KEY_KBDILLUMUP); break;
  case 0xc5: asus_map_key_clear(KEY_KBDILLUMDOWN); break;


  case 0x6b: asus_map_key_clear(KEY_F21); break;


  case 0x38: asus_map_key_clear(KEY_PROG1); break;


  case 0xba: asus_map_key_clear(KEY_PROG2); break;


  case 0x5c: asus_map_key_clear(KEY_PROG3); break;


  case 0x99: asus_map_key_clear(KEY_PROG4); break;

  default:


   return -1;
  }







  if (drvdata->quirks & QUIRK_USE_KBD_BACKLIGHT)
   drvdata->enable_backlight = 1;

  return 1;
 }

 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_MSVENDOR) {
  set_bit(EV_REP, hi->input->evbit);
  switch (usage->hid & HID_USAGE) {
  case 0xff01: asus_map_key_clear(BTN_1); break;
  case 0xff02: asus_map_key_clear(BTN_2); break;
  case 0xff03: asus_map_key_clear(BTN_3); break;
  case 0xff04: asus_map_key_clear(BTN_4); break;
  case 0xff05: asus_map_key_clear(BTN_5); break;
  case 0xff06: asus_map_key_clear(BTN_6); break;
  case 0xff07: asus_map_key_clear(BTN_7); break;
  case 0xff08: asus_map_key_clear(BTN_8); break;
  case 0xff09: asus_map_key_clear(BTN_9); break;
  case 0xff0a: asus_map_key_clear(BTN_A); break;
  case 0xff0b: asus_map_key_clear(BTN_B); break;
  case 0x00f1: asus_map_key_clear(KEY_WLAN); break;
  case 0x00f2: asus_map_key_clear(KEY_BRIGHTNESSDOWN); break;
  case 0x00f3: asus_map_key_clear(KEY_BRIGHTNESSUP); break;
  case 0x00f4: asus_map_key_clear(KEY_DISPLAY_OFF); break;
  case 0x00f7: asus_map_key_clear(KEY_CAMERA); break;
  case 0x00f8: asus_map_key_clear(KEY_PROG1); break;
  default:
   return 0;
  }

  return 1;
 }

 if (drvdata->quirks & QUIRK_NO_CONSUMER_USAGES &&
  (usage->hid & HID_USAGE_PAGE) == HID_UP_CONSUMER) {
  switch (usage->hid & HID_USAGE) {
  case 0xe2:
  case 0xe9:
  case 0xea:
   return 0;
  default:



   return -1;
  }
 }

 return 0;
}
