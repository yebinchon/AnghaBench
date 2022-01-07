
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int kv_force_dpm_lowest (struct radeon_device*) ;

__attribute__((used)) static int kv_force_lowest_valid(struct radeon_device *rdev)
{
 return kv_force_dpm_lowest(rdev);
}
