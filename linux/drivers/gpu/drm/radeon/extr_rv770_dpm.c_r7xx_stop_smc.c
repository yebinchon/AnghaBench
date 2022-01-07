
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int rv770_reset_smc (struct radeon_device*) ;
 int rv770_stop_smc_clock (struct radeon_device*) ;

void r7xx_stop_smc(struct radeon_device *rdev)
{
 rv770_reset_smc(rdev);
 rv770_stop_smc_clock(rdev);
}
