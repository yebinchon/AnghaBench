
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {scalar_t__ lowest_valid; scalar_t__ highest_valid; TYPE_1__* graphics_level; } ;
struct TYPE_2__ {int DisplayWatermark; } ;


 int EINVAL ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static int kv_calculate_dpm_settings(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 i;

 if (pi->lowest_valid > pi->highest_valid)
  return -EINVAL;

 for (i = pi->lowest_valid; i <= pi->highest_valid; i++)
  pi->graphics_level[i].DisplayWatermark = (i == pi->highest_valid) ? 1 : 0;

 return 0;
}
