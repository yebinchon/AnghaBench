
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int si_program_jump_on_start (struct radeon_device*) ;
 int si_start_smc (struct radeon_device*) ;
 int si_start_smc_clock (struct radeon_device*) ;

__attribute__((used)) static void si_dpm_start_smc(struct radeon_device *rdev)
{
 si_program_jump_on_start(rdev);
 si_start_smc(rdev);
 si_start_smc_clock(rdev);
}
