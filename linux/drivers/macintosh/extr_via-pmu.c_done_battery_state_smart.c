
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adb_request {int* reply; int reply_len; } ;
struct TYPE_2__ {unsigned int flags; unsigned int charge; unsigned int max_charge; int amperage; unsigned int voltage; unsigned int time_remaining; } ;


 unsigned int PMU_BATT_CHARGING ;
 unsigned int PMU_BATT_PRESENT ;
 unsigned int PMU_BATT_TYPE_SMART ;
 int PMU_PWR_AC_PRESENT ;
 int async_req_locks ;
 int clear_bit (int ,int *) ;
 TYPE_1__* pmu_batteries ;
 size_t pmu_battery_count ;
 size_t pmu_cur_battery ;
 int pmu_power_flags ;
 int pr_warn (char*,int ,int*) ;

__attribute__((used)) static void
done_battery_state_smart(struct adb_request* req)
{
 unsigned int bat_flags = PMU_BATT_TYPE_SMART;
 int amperage;
 unsigned int capa, max, voltage;

 if (req->reply[1] & 0x01)
  pmu_power_flags |= PMU_PWR_AC_PRESENT;
 else
  pmu_power_flags &= ~PMU_PWR_AC_PRESENT;


 capa = max = amperage = voltage = 0;

 if (req->reply[1] & 0x04) {
  bat_flags |= PMU_BATT_PRESENT;
  switch(req->reply[0]) {
   case 3:
   case 4: capa = req->reply[2];
    max = req->reply[3];
    amperage = *((signed char *)&req->reply[4]);
    voltage = req->reply[5];
    break;
   case 5: capa = (req->reply[2] << 8) | req->reply[3];
    max = (req->reply[4] << 8) | req->reply[5];
    amperage = *((signed short *)&req->reply[6]);
    voltage = (req->reply[8] << 8) | req->reply[9];
    break;
   default:
    pr_warn("pmu.c: unrecognized battery info, "
     "len: %d, %4ph\n", req->reply_len,
          req->reply);
    break;
  }
 }

 if ((req->reply[1] & 0x01) && (amperage > 0))
  bat_flags |= PMU_BATT_CHARGING;

 pmu_batteries[pmu_cur_battery].flags = bat_flags;
 pmu_batteries[pmu_cur_battery].charge = capa;
 pmu_batteries[pmu_cur_battery].max_charge = max;
 pmu_batteries[pmu_cur_battery].amperage = amperage;
 pmu_batteries[pmu_cur_battery].voltage = voltage;
 if (amperage) {
  if ((req->reply[1] & 0x01) && (amperage > 0))
   pmu_batteries[pmu_cur_battery].time_remaining
    = ((max-capa) * 3600) / amperage;
  else
   pmu_batteries[pmu_cur_battery].time_remaining
    = (capa * 3600) / (-amperage);
 } else
  pmu_batteries[pmu_cur_battery].time_remaining = 0;

 pmu_cur_battery = (pmu_cur_battery + 1) % pmu_battery_count;

 clear_bit(0, &async_req_locks);
}
