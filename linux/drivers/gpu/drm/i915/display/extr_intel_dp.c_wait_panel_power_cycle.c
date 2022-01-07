
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {scalar_t__ panel_power_cycle_delay; int panel_power_off_time; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int DRM_DEBUG_KMS (char*) ;
 int IDLE_CYCLE_MASK ;
 int IDLE_CYCLE_VALUE ;
 int jiffies ;
 int ktime_get_boottime () ;
 scalar_t__ ktime_ms_delta (int ,int ) ;
 int wait_panel_status (struct intel_dp*,int ,int ) ;
 int wait_remaining_ms_from_jiffies (int ,scalar_t__) ;

__attribute__((used)) static void wait_panel_power_cycle(struct intel_dp *intel_dp)
{
 ktime_t panel_power_on_time;
 s64 panel_power_off_duration;

 DRM_DEBUG_KMS("Wait for panel power cycle\n");



 panel_power_on_time = ktime_get_boottime();
 panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->panel_power_off_time);



 if (panel_power_off_duration < (s64)intel_dp->panel_power_cycle_delay)
  wait_remaining_ms_from_jiffies(jiffies,
           intel_dp->panel_power_cycle_delay - panel_power_off_duration);

 wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
}
