
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ps {scalar_t__ evclk; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int VceBootLevel; } ;
struct ci_power_info {TYPE_1__ smc_state_table; } ;


 int DPM_TABLE_475 ;
 int RADEON_CG_BLOCK_VCE ;
 int RREG32_SMC (int ) ;
 int VceBootLevel (int ) ;
 int VceBootLevel_MASK ;
 int WREG32_SMC (int ,int ) ;
 int ci_enable_vce_dpm (struct radeon_device*,int) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_get_vce_boot_level (struct radeon_device*) ;
 int cik_update_cg (struct radeon_device*,int ,int) ;

__attribute__((used)) static int ci_update_vce_dpm(struct radeon_device *rdev,
        struct radeon_ps *radeon_new_state,
        struct radeon_ps *radeon_current_state)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 int ret = 0;
 u32 tmp;

 if (radeon_current_state->evclk != radeon_new_state->evclk) {
  if (radeon_new_state->evclk) {

   cik_update_cg(rdev, RADEON_CG_BLOCK_VCE, 0);

   pi->smc_state_table.VceBootLevel = ci_get_vce_boot_level(rdev);
   tmp = RREG32_SMC(DPM_TABLE_475);
   tmp &= ~VceBootLevel_MASK;
   tmp |= VceBootLevel(pi->smc_state_table.VceBootLevel);
   WREG32_SMC(DPM_TABLE_475, tmp);

   ret = ci_enable_vce_dpm(rdev, 1);
  } else {

   cik_update_cg(rdev, RADEON_CG_BLOCK_VCE, 1);

   ret = ci_enable_vce_dpm(rdev, 0);
  }
 }
 return ret;
}
