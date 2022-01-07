
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int backlight_on_delay; int last_power_on; } ;


 int wait_remaining_ms_from_jiffies (int ,int ) ;

__attribute__((used)) static void wait_backlight_on(struct intel_dp *intel_dp)
{
 wait_remaining_ms_from_jiffies(intel_dp->last_power_on,
           intel_dp->backlight_on_delay);
}
