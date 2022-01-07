
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;


 scalar_t__ CHIP_MULLINS ;
 int kv_clear_vc (struct radeon_device*) ;
 int kv_dpm_powergate_acp (struct radeon_device*,int) ;
 int kv_dpm_powergate_samu (struct radeon_device*,int) ;
 int kv_dpm_powergate_uvd (struct radeon_device*,int) ;
 int kv_dpm_powergate_vce (struct radeon_device*,int) ;
 int kv_enable_didt (struct radeon_device*,int) ;
 int kv_enable_nb_dpm (struct radeon_device*,int) ;
 int kv_enable_smc_cac (struct radeon_device*,int) ;
 int kv_enable_thermal_int (struct radeon_device*,int) ;
 int kv_enable_ulv (struct radeon_device*,int) ;
 int kv_reset_am (struct radeon_device*) ;
 int kv_smc_bapm_enable (struct radeon_device*,int) ;
 int kv_stop_dpm (struct radeon_device*) ;
 int kv_update_current_ps (struct radeon_device*,int ) ;

void kv_dpm_disable(struct radeon_device *rdev)
{
 kv_smc_bapm_enable(rdev, 0);

 if (rdev->family == CHIP_MULLINS)
  kv_enable_nb_dpm(rdev, 0);


 kv_dpm_powergate_acp(rdev, 0);
 kv_dpm_powergate_samu(rdev, 0);
 kv_dpm_powergate_vce(rdev, 0);
 kv_dpm_powergate_uvd(rdev, 0);

 kv_enable_smc_cac(rdev, 0);
 kv_enable_didt(rdev, 0);
 kv_clear_vc(rdev);
 kv_stop_dpm(rdev);
 kv_enable_ulv(rdev, 0);
 kv_reset_am(rdev);
 kv_enable_thermal_int(rdev, 0);

 kv_update_current_ps(rdev, rdev->pm.dpm.boot_ps);
}
