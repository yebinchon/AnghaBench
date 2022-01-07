
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct TYPE_2__ {int EnabledForActivity; } ;


 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static void kv_dpm_power_level_enable(struct radeon_device *rdev,
          u32 index, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 pi->graphics_level[index].EnabledForActivity = enable ? 1 : 0;
}
