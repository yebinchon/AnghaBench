
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boot_ps; int requested_ps; int current_ps; } ;
struct TYPE_4__ {int dpm_enabled; scalar_t__ default_mclk; scalar_t__ default_sclk; scalar_t__ default_vddci; scalar_t__ default_vddc; int mutex; TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; scalar_t__ mc_fw; } ;


 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_CAYMAN ;
 int DRM_ERROR (char*) ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int SET_VOLTAGE_TYPE_ASIC_VDDCI ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_atom_set_voltage (struct radeon_device*,scalar_t__,int ) ;
 int radeon_dpm_enable (struct radeon_device*) ;
 int radeon_dpm_setup_asic (struct radeon_device*) ;
 int radeon_set_engine_clock (struct radeon_device*,scalar_t__) ;
 int radeon_set_memory_clock (struct radeon_device*,scalar_t__) ;

__attribute__((used)) static void radeon_pm_resume_dpm(struct radeon_device *rdev)
{
 int ret;


 mutex_lock(&rdev->pm.mutex);
 rdev->pm.dpm.current_ps = rdev->pm.dpm.requested_ps = rdev->pm.dpm.boot_ps;
 radeon_dpm_setup_asic(rdev);
 ret = radeon_dpm_enable(rdev);
 mutex_unlock(&rdev->pm.mutex);
 if (ret)
  goto dpm_resume_fail;
 rdev->pm.dpm_enabled = 1;
 return;

dpm_resume_fail:
 DRM_ERROR("radeon: dpm resume failed\n");
 if ((rdev->family >= CHIP_BARTS) &&
     (rdev->family <= CHIP_CAYMAN) &&
     rdev->mc_fw) {
  if (rdev->pm.default_vddc)
   radeon_atom_set_voltage(rdev, rdev->pm.default_vddc,
      SET_VOLTAGE_TYPE_ASIC_VDDC);
  if (rdev->pm.default_vddci)
   radeon_atom_set_voltage(rdev, rdev->pm.default_vddci,
      SET_VOLTAGE_TYPE_ASIC_VDDCI);
  if (rdev->pm.default_sclk)
   radeon_set_engine_clock(rdev, rdev->pm.default_sclk);
  if (rdev->pm.default_mclk)
   radeon_set_memory_clock(rdev, rdev->pm.default_mclk);
 }
}
