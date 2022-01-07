
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pm_method; scalar_t__ dpm_enabled; } ;
struct TYPE_4__ {int idle_work; } ;
struct radeon_device {TYPE_1__ pm; TYPE_2__ vce; } ;


 scalar_t__ PM_METHOD_DPM ;
 int VCE_IDLE_TIMEOUT_MS ;
 int cancel_delayed_work_sync (int *) ;
 int msecs_to_jiffies (int ) ;
 int radeon_dpm_enable_vce (struct radeon_device*,int) ;
 int radeon_set_vce_clocks (struct radeon_device*,int,int) ;
 int schedule_delayed_work (int *,int ) ;

void radeon_vce_note_usage(struct radeon_device *rdev)
{
 bool streams_changed = 0;
 bool set_clocks = !cancel_delayed_work_sync(&rdev->vce.idle_work);
 set_clocks &= schedule_delayed_work(&rdev->vce.idle_work,
         msecs_to_jiffies(VCE_IDLE_TIMEOUT_MS));

 if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {

  streams_changed = 0;
 }

 if (set_clocks || streams_changed) {
  if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {
   radeon_dpm_enable_vce(rdev, 1);
  } else {
   radeon_set_vce_clocks(rdev, 53300, 40000);
  }
 }
}
