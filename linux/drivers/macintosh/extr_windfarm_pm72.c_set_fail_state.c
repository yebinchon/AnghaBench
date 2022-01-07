
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ backside_fan ;
 int cpu_max_all_fans () ;
 scalar_t__ drives_fan ;
 scalar_t__ slots_fan ;
 int wf_control_set_max (scalar_t__) ;

__attribute__((used)) static void set_fail_state(void)
{
 cpu_max_all_fans();

 if (backside_fan)
  wf_control_set_max(backside_fan);
 if (slots_fan)
  wf_control_set_max(slots_fan);
 if (drives_fan)
  wf_control_set_max(drives_fan);
}
