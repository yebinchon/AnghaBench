
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pm_method; } ;
struct TYPE_3__ {int atom_context; } ;
struct radeon_device {int accel_working; TYPE_2__ pm; TYPE_1__ mode_info; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ PM_METHOD_DPM ;
 int atom_asic_init (int ) ;
 int cayman_startup (struct radeon_device*) ;
 int ni_init_golden_registers (struct radeon_device*) ;
 int radeon_pm_resume (struct radeon_device*) ;

int cayman_resume(struct radeon_device *rdev)
{
 int r;






 atom_asic_init(rdev->mode_info.atom_context);


 ni_init_golden_registers(rdev);

 if (rdev->pm.pm_method == PM_METHOD_DPM)
  radeon_pm_resume(rdev);

 rdev->accel_working = 1;
 r = cayman_startup(rdev);
 if (r) {
  DRM_ERROR("cayman startup failed on resume\n");
  rdev->accel_working = 0;
  return r;
 }
 return r;
}
