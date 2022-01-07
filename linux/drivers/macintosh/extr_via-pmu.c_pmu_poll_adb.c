
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adb_int_pending ;
 scalar_t__ disable_poll ;
 scalar_t__ idle ;
 scalar_t__ pmu_state ;
 scalar_t__ pmu_suspended ;
 scalar_t__ req_awaiting_reply ;
 scalar_t__ uninitialized ;
 int via_pmu_interrupt (int ,int *) ;

void
pmu_poll_adb(void)
{
 if (pmu_state == uninitialized)
  return;
 if (disable_poll)
  return;

 adb_int_pending = 1;
 do {
  via_pmu_interrupt(0, ((void*)0));
 } while (pmu_suspended && (adb_int_pending || pmu_state != idle
  || req_awaiting_reply));
}
