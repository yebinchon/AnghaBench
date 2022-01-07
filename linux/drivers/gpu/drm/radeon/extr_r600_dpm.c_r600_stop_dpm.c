
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r600_dynamicpm_enable (struct radeon_device*,int) ;

void r600_stop_dpm(struct radeon_device *rdev)
{
 r600_dynamicpm_enable(rdev, 0);
}
