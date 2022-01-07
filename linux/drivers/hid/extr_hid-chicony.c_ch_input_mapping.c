
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {int hid; } ;
struct hid_input {TYPE_1__* input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
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
 int HID_UP_MSVENDOR ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_BRIGHTNESSDOWN ;
 int KEY_BRIGHTNESSUP ;
 int KEY_CAMERA ;
 int KEY_DISPLAY_OFF ;
 int KEY_PROG1 ;
 int KEY_WLAN ;
 int ch_map_key_clear (int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ch_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_MSVENDOR)
  return 0;

 set_bit(EV_REP, hi->input->evbit);
 switch (usage->hid & HID_USAGE) {
 case 0xff01: ch_map_key_clear(BTN_1); break;
 case 0xff02: ch_map_key_clear(BTN_2); break;
 case 0xff03: ch_map_key_clear(BTN_3); break;
 case 0xff04: ch_map_key_clear(BTN_4); break;
 case 0xff05: ch_map_key_clear(BTN_5); break;
 case 0xff06: ch_map_key_clear(BTN_6); break;
 case 0xff07: ch_map_key_clear(BTN_7); break;
 case 0xff08: ch_map_key_clear(BTN_8); break;
 case 0xff09: ch_map_key_clear(BTN_9); break;
 case 0xff0a: ch_map_key_clear(BTN_A); break;
 case 0xff0b: ch_map_key_clear(BTN_B); break;
 case 0x00f1: ch_map_key_clear(KEY_WLAN); break;
 case 0x00f2: ch_map_key_clear(KEY_BRIGHTNESSDOWN); break;
 case 0x00f3: ch_map_key_clear(KEY_BRIGHTNESSUP); break;
 case 0x00f4: ch_map_key_clear(KEY_DISPLAY_OFF); break;
 case 0x00f7: ch_map_key_clear(KEY_CAMERA); break;
 case 0x00f8: ch_map_key_clear(KEY_PROG1); break;
 default:
  return 0;
 }
 return 1;
}
