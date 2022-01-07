
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int original_handler_id; int input; } ;


 int KEY_BRIGHTNESSDOWN ;
 int KEY_BRIGHTNESSUP ;
 int KEY_EJECTCD ;
 int KEY_KBDILLUMDOWN ;
 int KEY_KBDILLUMTOGGLE ;
 int KEY_KBDILLUMUP ;
 int KEY_MUTE ;
 int KEY_SOUND ;
 int KEY_SWITCHVIDEOMODE ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 TYPE_1__** adbhid ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pmac_backlight_key_down () ;
 int pmac_backlight_key_up () ;
 int pr_err (char*,int) ;
 int pr_info (char*,unsigned char,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static void
adbhid_buttons_input(unsigned char *data, int nb, int autopoll)
{
 int id = (data[0] >> 4) & 0x0f;

 if (!adbhid[id]) {
  pr_err("ADB HID on ID %d not yet registered\n", id);
  return;
 }

 switch (adbhid[id]->original_handler_id) {
 default:
 case 0x02:
   {
  int down = (data[1] == (data[1] & 0xf));

  switch (data[1] & 0x0f) {
  case 0x0:
   input_report_key(adbhid[id]->input, KEY_SOUND, down);
   break;

  case 0x1:
   input_report_key(adbhid[id]->input, KEY_MUTE, down);
   break;

  case 0x2:
   input_report_key(adbhid[id]->input, KEY_VOLUMEDOWN, down);
   break;

  case 0x3:
   input_report_key(adbhid[id]->input, KEY_VOLUMEUP, down);
   break;

  default:
   pr_info("Unhandled ADB_MISC event %02x, %02x, %02x, %02x\n",
    data[0], data[1], data[2], data[3]);
   break;
  }
   }
   break;

 case 0x1f:
   {
  int down = (data[1] == (data[1] & 0xf));






  switch (data[1] & 0x0f) {
  case 0x8:
   input_report_key(adbhid[id]->input, KEY_MUTE, down);
   break;

  case 0x7:
   input_report_key(adbhid[id]->input, KEY_VOLUMEDOWN, down);
   break;

  case 0x6:
   input_report_key(adbhid[id]->input, KEY_VOLUMEUP, down);
   break;

  case 0xb:
   input_report_key(adbhid[id]->input, KEY_EJECTCD, down);
   break;

  case 0xa:




   input_report_key(adbhid[id]->input, KEY_BRIGHTNESSDOWN, down);
   break;

  case 0x9:




   input_report_key(adbhid[id]->input, KEY_BRIGHTNESSUP, down);
   break;

  case 0xc:
   input_report_key(adbhid[id]->input, KEY_SWITCHVIDEOMODE, down);
   break;

  case 0xd:
   input_report_key(adbhid[id]->input, KEY_KBDILLUMTOGGLE, down);
   break;

  case 0xe:
   input_report_key(adbhid[id]->input, KEY_KBDILLUMDOWN, down);
   break;

  case 0xf:
   switch (data[1]) {
   case 0x8f:
   case 0x0f:

    input_report_key(adbhid[id]->input, KEY_KBDILLUMUP, down);
    break;

   case 0x7f:
   case 0xff:

    break;

   default:
    pr_info("Unhandled ADB_MISC event %02x, %02x, %02x, %02x\n",
     data[0], data[1], data[2], data[3]);
    break;
   }
   break;
  default:
   pr_info("Unhandled ADB_MISC event %02x, %02x, %02x, %02x\n",
    data[0], data[1], data[2], data[3]);
   break;
  }
   }
   break;
 }

 input_sync(adbhid[id]->input);
}
