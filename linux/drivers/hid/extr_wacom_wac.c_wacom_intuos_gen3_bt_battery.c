
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {unsigned char* data; } ;


 int WACOM_POWER_SUPPLY_STATUS_AUTO ;
 int wacom_notify_battery (struct wacom_wac*,int ,int,int,int,int) ;

__attribute__((used)) static void wacom_intuos_gen3_bt_battery(struct wacom_wac *wacom)
{
 unsigned char *data = wacom->data;

 bool chg = data[45] & 0x80;
 int battery_status = data[45] & 0x7F;

 wacom_notify_battery(wacom, WACOM_POWER_SUPPLY_STATUS_AUTO,
        battery_status, chg, 1, chg);
}
