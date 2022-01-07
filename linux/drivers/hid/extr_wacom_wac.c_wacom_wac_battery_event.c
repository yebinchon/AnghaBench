
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int battery_capacity; int bat_connected; int bat_charging; int ps_connected; void* bat_status; } ;
struct wacom_wac {TYPE_1__ hid_data; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_usage {int hid; } ;
struct hid_field {int logical_maximum; int logical_minimum; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;



 void* POWER_SUPPLY_STATUS_UNKNOWN ;


 void* WACOM_POWER_SUPPLY_STATUS_AUTO ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 unsigned int wacom_equivalent_usage (int ) ;

__attribute__((used)) static void wacom_wac_battery_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);

 switch (equivalent_usage) {
 case 130:
  if (value == 0) {
   wacom_wac->hid_data.bat_status = POWER_SUPPLY_STATUS_UNKNOWN;
  }
  else {
   value = value * 100 / (field->logical_maximum - field->logical_minimum);
   wacom_wac->hid_data.battery_capacity = value;
   wacom_wac->hid_data.bat_connected = 1;
   wacom_wac->hid_data.bat_status = WACOM_POWER_SUPPLY_STATUS_AUTO;
  }
  break;
 case 128:
  value = value * 100 / (field->logical_maximum - field->logical_minimum);
  wacom_wac->hid_data.battery_capacity = value;
  wacom_wac->hid_data.bat_connected = 1;
  wacom_wac->hid_data.bat_status = WACOM_POWER_SUPPLY_STATUS_AUTO;
  break;
 case 129:
  wacom_wac->hid_data.bat_charging = value;
  wacom_wac->hid_data.ps_connected = value;
  wacom_wac->hid_data.bat_connected = 1;
  wacom_wac->hid_data.bat_status = WACOM_POWER_SUPPLY_STATUS_AUTO;
  break;
 }
}
