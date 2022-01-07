
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int ci_dpm_powergate_uvd (struct radeon_device*,int) ;
 int ci_set_temperature_range (struct radeon_device*) ;

int ci_dpm_late_enable(struct radeon_device *rdev)
{
 int ret;

 ret = ci_set_temperature_range(rdev);
 if (ret)
  return ret;

 ci_dpm_powergate_uvd(rdev, 1);

 return 0;
}
