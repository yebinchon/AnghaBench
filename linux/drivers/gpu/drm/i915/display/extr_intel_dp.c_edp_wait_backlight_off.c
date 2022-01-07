
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int backlight_off_delay; int last_backlight_off; } ;


 int wait_remaining_ms_from_jiffies (int ,int ) ;

__attribute__((used)) static void edp_wait_backlight_off(struct intel_dp *intel_dp)
{
 wait_remaining_ms_from_jiffies(intel_dp->last_backlight_off,
           intel_dp->backlight_off_delay);
}
