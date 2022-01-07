
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 scalar_t__ rv770_is_smc_running (struct radeon_device*) ;

bool btc_dpm_enabled(struct radeon_device *rdev)
{
 if (rv770_is_smc_running(rdev))
  return 1;
 else
  return 0;
}
