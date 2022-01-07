
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zc_device {scalar_t__* last_key; int input_ep81; } ;
struct hid_usage {int hid; } ;
struct hid_input {int input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_UP_CONSUMER ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_AUDIO ;
 int KEY_AUX ;
 int KEY_DVD ;
 int KEY_INFO ;
 int KEY_MENU ;
 int KEY_MODE ;
 int KEY_PVR ;
 int KEY_RADIO ;
 int KEY_SCREEN ;
 int KEY_TEXT ;
 int KEY_TV ;
 int KEY_VIDEO ;
 int dbg_hid (char*,int) ;
 struct zc_device* hid_get_drvdata (struct hid_device*) ;
 int zc_map_key_clear (int ) ;

__attribute__((used)) static int zc_input_mapping(struct hid_device *hdev, struct hid_input *hi,
 struct hid_field *field, struct hid_usage *usage,
 unsigned long **bit, int *max)
{
 int i;
 struct zc_device *zc = hid_get_drvdata(hdev);
 zc->input_ep81 = hi->input;

 if ((usage->hid & HID_USAGE_PAGE) != HID_UP_CONSUMER)
  return 0;

 dbg_hid("zynacron input mapping event [0x%x]\n",
  usage->hid & HID_USAGE);

 switch (usage->hid & HID_USAGE) {

 case 0x10:
  zc_map_key_clear(KEY_MODE);
  break;
 case 0x30:
  zc_map_key_clear(KEY_SCREEN);
  break;
 case 0x70:
  zc_map_key_clear(KEY_INFO);
  break;

 case 0x04:
  zc_map_key_clear(KEY_RADIO);
  break;

 case 0x0d:
  zc_map_key_clear(KEY_PVR);
  break;
 case 0x25:
  zc_map_key_clear(KEY_TV);
  break;
 case 0x47:
  zc_map_key_clear(KEY_AUDIO);
  break;
 case 0x49:
  zc_map_key_clear(KEY_AUX);
  break;
 case 0x4a:
  zc_map_key_clear(KEY_VIDEO);
  break;
 case 0x48:
  zc_map_key_clear(KEY_DVD);
  break;
 case 0x24:
  zc_map_key_clear(KEY_MENU);
  break;
 case 0x32:
  zc_map_key_clear(KEY_TEXT);
  break;
 default:
  return 0;
 }

 for (i = 0; i < 4; i++)
  zc->last_key[i] = 0;

 return 1;
}
