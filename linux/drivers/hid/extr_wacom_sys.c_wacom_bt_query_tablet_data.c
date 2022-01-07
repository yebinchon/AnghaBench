
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wacom_features {int type; } ;
struct TYPE_2__ {int bt_high_speed; int bt_features; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_device {int dummy; } ;



 int HID_FEATURE_REPORT ;

 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,int,int) ;
 int wacom_set_report (struct hid_device*,int ,int*,int,int) ;

__attribute__((used)) static int wacom_bt_query_tablet_data(struct hid_device *hdev, u8 speed,
  struct wacom_features *features)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 int ret;
 u8 rep_data[2];

 switch (features->type) {
 case 129:
  rep_data[0] = 0x03;
  rep_data[1] = 0x00;
  ret = wacom_set_report(hdev, HID_FEATURE_REPORT, rep_data, 2,
     3);

  if (ret >= 0) {
   rep_data[0] = speed == 0 ? 0x05 : 0x06;
   rep_data[1] = 0x00;

   ret = wacom_set_report(hdev, HID_FEATURE_REPORT,
      rep_data, 2, 3);

   if (ret >= 0) {
    wacom->wacom_wac.bt_high_speed = speed;
    return 0;
   }
  }





  hid_warn(hdev, "failed to poke device, command %d, err %d\n",
    rep_data[0], ret);
  break;
 case 128:
  if (speed == 1)
   wacom->wacom_wac.bt_features &= ~0x20;
  else
   wacom->wacom_wac.bt_features |= 0x20;

  rep_data[0] = 0x03;
  rep_data[1] = wacom->wacom_wac.bt_features;

  ret = wacom_set_report(hdev, HID_FEATURE_REPORT, rep_data, 2,
     1);
  if (ret >= 0)
   wacom->wacom_wac.bt_high_speed = speed;
  break;
 }

 return 0;
}
