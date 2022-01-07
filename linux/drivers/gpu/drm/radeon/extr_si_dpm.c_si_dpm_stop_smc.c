
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int si_reset_smc (struct radeon_device*) ;
 int si_stop_smc_clock (struct radeon_device*) ;

__attribute__((used)) static void si_dpm_stop_smc(struct radeon_device *rdev)
{
 si_reset_smc(rdev);
 si_stop_smc_clock(rdev);
}
