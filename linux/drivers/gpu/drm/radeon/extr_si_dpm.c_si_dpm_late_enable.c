
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int si_set_temperature_range (struct radeon_device*) ;

int si_dpm_late_enable(struct radeon_device *rdev)
{
 int ret;

 ret = si_set_temperature_range(rdev);
 if (ret)
  return ret;

 return ret;
}
