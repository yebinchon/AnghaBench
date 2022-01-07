
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {void* last_backlight_off; void* last_power_on; int panel_power_off_time; } ;


 void* jiffies ;
 int ktime_get_boottime () ;

__attribute__((used)) static void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
{
 intel_dp->panel_power_off_time = ktime_get_boottime();
 intel_dp->last_power_on = jiffies;
 intel_dp->last_backlight_off = jiffies;
}
