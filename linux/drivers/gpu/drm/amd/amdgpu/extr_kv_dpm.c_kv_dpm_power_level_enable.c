
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int EnabledForActivity; } ;


 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void kv_dpm_power_level_enable(struct amdgpu_device *adev,
          u32 index, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(adev);

 pi->graphics_level[index].EnabledForActivity = enable ? 1 : 0;
}
