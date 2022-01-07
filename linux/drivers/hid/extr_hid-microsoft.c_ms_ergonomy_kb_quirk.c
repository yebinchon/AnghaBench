
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; int evbit; } ;
struct hid_usage {int hid; } ;
struct hid_input {struct input_dev* input; } ;


 int EV_REL ;
 int EV_REP ;
 int HID_UP_CONSUMER ;
 int HID_UP_MSVENDOR ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_CHAT ;
 int KEY_F13 ;
 int KEY_F14 ;
 int KEY_F15 ;
 int KEY_F16 ;
 int KEY_F17 ;
 int KEY_F18 ;
 int KEY_KPEQUAL ;
 int KEY_KPLEFTPAREN ;
 int KEY_KPRIGHTPAREN ;
 int KEY_PHONE ;
 int KEY_PROG1 ;
 int KEY_PROG2 ;
 int REL_WHEEL ;
 int hid_map_usage_clear (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;
 int ms_map_key_clear (int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ms_ergonomy_kb_quirk(struct hid_input *hi, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct input_dev *input = hi->input;

 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_CONSUMER) {
  switch (usage->hid & HID_USAGE) {




  case 0x29d:
   ms_map_key_clear(KEY_PROG1);
   return 1;
  case 0x29e:
   ms_map_key_clear(KEY_PROG2);
   return 1;
  }
  return 0;
 }

 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_MSVENDOR)
  return 0;

 switch (usage->hid & HID_USAGE) {
 case 0xfd06: ms_map_key_clear(KEY_CHAT); break;
 case 0xfd07: ms_map_key_clear(KEY_PHONE); break;
 case 0xff00:

  ms_map_key_clear(KEY_KPEQUAL);
  set_bit(KEY_KPLEFTPAREN, input->keybit);
  set_bit(KEY_KPRIGHTPAREN, input->keybit);
  break;
 case 0xff01:

  hid_map_usage_clear(hi, usage, bit, max, EV_REL, REL_WHEEL);
  break;
 case 0xff02:
  return -1;
 case 0xff05:
  set_bit(EV_REP, input->evbit);
  ms_map_key_clear(KEY_F13);
  set_bit(KEY_F14, input->keybit);
  set_bit(KEY_F15, input->keybit);
  set_bit(KEY_F16, input->keybit);
  set_bit(KEY_F17, input->keybit);
  set_bit(KEY_F18, input->keybit);
  break;
 default:
  return 0;
 }
 return 1;
}
