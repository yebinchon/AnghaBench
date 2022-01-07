
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct evergreen_power_info* priv; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct evergreen_power_info {int dummy; } ;



struct evergreen_power_info *evergreen_get_pi(struct radeon_device *rdev)
{
 struct evergreen_power_info *pi = rdev->pm.dpm.priv;

 return pi;
}
