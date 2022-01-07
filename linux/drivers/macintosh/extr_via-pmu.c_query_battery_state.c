
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMU_BATTERY_STATE ;
 scalar_t__ PMU_OHARE_BASED ;
 int PMU_SMART_BATTERY_STATE ;
 int async_req_locks ;
 int batt_req ;
 int done_battery_state_ohare ;
 int done_battery_state_smart ;
 scalar_t__ pmu_cur_battery ;
 scalar_t__ pmu_kind ;
 int pmu_request (int *,int ,int,int ,...) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
query_battery_state(void)
{
 if (test_and_set_bit(0, &async_req_locks))
  return;
 if (pmu_kind == PMU_OHARE_BASED)
  pmu_request(&batt_req, done_battery_state_ohare,
   1, PMU_BATTERY_STATE);
 else
  pmu_request(&batt_req, done_battery_state_smart,
   2, PMU_SMART_BATTERY_STATE, pmu_cur_battery+1);
}
