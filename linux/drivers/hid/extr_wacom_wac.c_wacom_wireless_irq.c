
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; int pid; TYPE_1__* shared; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ touch_input; scalar_t__ touch_max; } ;


 scalar_t__ INTUOSHT ;
 scalar_t__ INTUOSHT2 ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int SW_MUTE_DEVICE ;
 size_t WACOM_PKGLEN_WIRELESS ;
 int WACOM_POWER_SUPPLY_STATUS_AUTO ;
 unsigned char WACOM_REPORT_WL ;
 int WACOM_WORKER_WIRELESS ;
 int get_unaligned_be16 (unsigned char*) ;
 int input_report_switch (scalar_t__,int ,unsigned char) ;
 int input_sync (scalar_t__) ;
 int wacom_notify_battery (struct wacom_wac*,int ,int,int,int,int ) ;
 int wacom_schedule_work (struct wacom_wac*,int ) ;

__attribute__((used)) static int wacom_wireless_irq(struct wacom_wac *wacom, size_t len)
{
 unsigned char *data = wacom->data;
 int connected;

 if (len != WACOM_PKGLEN_WIRELESS || data[0] != WACOM_REPORT_WL)
  return 0;

 connected = data[1] & 0x01;
 if (connected) {
  int pid, battery, charging;

  if ((wacom->shared->type == INTUOSHT ||
      wacom->shared->type == INTUOSHT2) &&
      wacom->shared->touch_input &&
      wacom->shared->touch_max) {
   input_report_switch(wacom->shared->touch_input,
     SW_MUTE_DEVICE, data[5] & 0x40);
   input_sync(wacom->shared->touch_input);
  }

  pid = get_unaligned_be16(&data[6]);
  battery = (data[5] & 0x3f) * 100 / 31;
  charging = !!(data[5] & 0x80);
  if (wacom->pid != pid) {
   wacom->pid = pid;
   wacom_schedule_work(wacom, WACOM_WORKER_WIRELESS);
  }

  wacom_notify_battery(wacom, WACOM_POWER_SUPPLY_STATUS_AUTO,
         battery, charging, 1, 0);

 } else if (wacom->pid != 0) {

  wacom->pid = 0;
  wacom_schedule_work(wacom, WACOM_WORKER_WIRELESS);
  wacom_notify_battery(wacom, POWER_SUPPLY_STATUS_UNKNOWN, 0, 0, 0, 0);
 }

 return 0;
}
