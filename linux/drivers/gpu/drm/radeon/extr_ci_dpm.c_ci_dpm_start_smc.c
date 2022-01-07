
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;


 int FIRMWARE_FLAGS ;
 int INTERRUPTS_ENABLED ;
 int RREG32_SMC (int ) ;
 int ci_program_jump_on_start (struct radeon_device*) ;
 int ci_start_smc (struct radeon_device*) ;
 int ci_start_smc_clock (struct radeon_device*) ;

__attribute__((used)) static void ci_dpm_start_smc(struct radeon_device *rdev)
{
 int i;

 ci_program_jump_on_start(rdev);
 ci_start_smc_clock(rdev);
 ci_start_smc(rdev);
 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32_SMC(FIRMWARE_FLAGS) & INTERRUPTS_ENABLED)
   break;
 }
}
