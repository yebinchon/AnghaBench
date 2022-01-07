
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int panel_power_cycle_delay; int panel_vdd_work; } ;


 unsigned long msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
{
 unsigned long delay;






 delay = msecs_to_jiffies(intel_dp->panel_power_cycle_delay * 5);
 schedule_delayed_work(&intel_dp->panel_vdd_work, delay);
}
