
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adb_request {int* reply; } ;
struct TYPE_2__ {unsigned int flags; long charge; long max_charge; long amperage; long voltage; long time_remaining; } ;


 int PMAC_FTR_GET_MB_INFO ;
 int PMAC_MB_INFO_MODEL ;
 int PMAC_TYPE_COMET ;
 unsigned int PMU_BATT_CHARGING ;
 unsigned int PMU_BATT_PRESENT ;
 unsigned int PMU_BATT_TYPE_HOOPER ;
 int PMU_PWR_AC_PRESENT ;
 int async_req_locks ;
 int clear_bit (int ,int *) ;
 int pmac_call_feature (int ,int *,int ,int ) ;
 TYPE_1__* pmu_batteries ;
 size_t pmu_cur_battery ;
 int pmu_power_flags ;

__attribute__((used)) static void
done_battery_state_ohare(struct adb_request* req)
{
 clear_bit(0, &async_req_locks);
}
