
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;
struct ci_power_info {int sram_end; } ;


 int BOOT_SEQ_DONE ;
 int RCU_UC_EVENTS ;
 int RREG32_SMC (int ) ;
 int SMC_SYSCON_MISC_CNTL ;
 int WREG32_SMC (int ,int) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_load_smc_ucode (struct radeon_device*,int ) ;
 int ci_reset_smc (struct radeon_device*) ;
 int ci_stop_smc_clock (struct radeon_device*) ;

__attribute__((used)) static int ci_upload_firmware(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 int i, ret;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32_SMC(RCU_UC_EVENTS) & BOOT_SEQ_DONE)
   break;
 }
 WREG32_SMC(SMC_SYSCON_MISC_CNTL, 1);

 ci_stop_smc_clock(rdev);
 ci_reset_smc(rdev);

 ret = ci_load_smc_ucode(rdev, pi->sram_end);

 return ret;

}
