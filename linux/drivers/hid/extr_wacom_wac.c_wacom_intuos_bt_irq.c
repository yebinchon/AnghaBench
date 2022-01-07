
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_wac {TYPE_2__* pen_input; int data; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int WACOM_PKGLEN_MAX ;
 int WACOM_POWER_SUPPLY_STATUS_AUTO ;
 unsigned int* batcap_i4 ;
 int dev_dbg (int ,char*,unsigned char,unsigned char,size_t) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int wacom_intuos_bt_process_data (struct wacom_wac*,unsigned char*) ;
 int wacom_notify_battery (struct wacom_wac*,int ,unsigned int,unsigned int,int,unsigned int) ;

__attribute__((used)) static int wacom_intuos_bt_irq(struct wacom_wac *wacom, size_t len)
{
 unsigned char data[WACOM_PKGLEN_MAX];
 int i = 1;
 unsigned power_raw, battery_capacity, bat_charging, ps_connected;

 memcpy(data, wacom->data, len);

 switch (data[0]) {
 case 0x04:
  wacom_intuos_bt_process_data(wacom, data + i);
  i += 10;

 case 0x03:
  wacom_intuos_bt_process_data(wacom, data + i);
  i += 10;
  wacom_intuos_bt_process_data(wacom, data + i);
  i += 10;
  power_raw = data[i];
  bat_charging = (power_raw & 0x08) ? 1 : 0;
  ps_connected = (power_raw & 0x10) ? 1 : 0;
  battery_capacity = batcap_i4[power_raw & 0x07];
  wacom_notify_battery(wacom, WACOM_POWER_SUPPLY_STATUS_AUTO,
         battery_capacity, bat_charging,
         battery_capacity || bat_charging,
         ps_connected);
  break;
 default:
  dev_dbg(wacom->pen_input->dev.parent,
    "Unknown report: %d,%d size:%zu\n",
    data[0], data[1], len);
  return 0;
 }
 return 0;
}
