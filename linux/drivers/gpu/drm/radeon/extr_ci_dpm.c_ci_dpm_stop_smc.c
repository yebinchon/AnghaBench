
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int ci_reset_smc (struct radeon_device*) ;
 int ci_stop_smc_clock (struct radeon_device*) ;

__attribute__((used)) static void ci_dpm_stop_smc(struct radeon_device *rdev)
{
 ci_reset_smc(rdev);
 ci_stop_smc_clock(rdev);
}
