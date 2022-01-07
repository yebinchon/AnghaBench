
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {scalar_t__ count; } ;
struct TYPE_6__ {TYPE_5__ uvd_clock_voltage_dependency_table; } ;
struct TYPE_7__ {TYPE_1__ dyn_state; } ;
struct TYPE_8__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct TYPE_9__ {scalar_t__ UvdBootLevel; } ;
struct ci_power_info {TYPE_4__ smc_state_table; scalar_t__ caps_uvd_dpm; } ;


 int DPM_TABLE_475 ;
 int RREG32_SMC (int ) ;
 int UvdBootLevel (scalar_t__) ;
 int UvdBootLevel_MASK ;
 int WREG32_SMC (int ,int ) ;
 int ci_enable_uvd_dpm (struct radeon_device*,int) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ci_update_uvd_dpm(struct radeon_device *rdev, bool gate)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u32 tmp;

 if (!gate) {
  if (pi->caps_uvd_dpm ||
      (rdev->pm.dpm.dyn_state.uvd_clock_voltage_dependency_table.count <= 0))
   pi->smc_state_table.UvdBootLevel = 0;
  else
   pi->smc_state_table.UvdBootLevel =
    rdev->pm.dpm.dyn_state.uvd_clock_voltage_dependency_table.count - 1;

  tmp = RREG32_SMC(DPM_TABLE_475);
  tmp &= ~UvdBootLevel_MASK;
  tmp |= UvdBootLevel(pi->smc_state_table.UvdBootLevel);
  WREG32_SMC(DPM_TABLE_475, tmp);
 }

 return ci_enable_uvd_dpm(rdev, !gate);
}
