
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ disable_poll ;
 scalar_t__ pmu_state ;
 scalar_t__ uninitialized ;
 int via_pmu_interrupt (int ,int *) ;

void
pmu_poll(void)
{
 if (pmu_state == uninitialized)
  return;
 if (disable_poll)
  return;
 via_pmu_interrupt(0, ((void*)0));
}
