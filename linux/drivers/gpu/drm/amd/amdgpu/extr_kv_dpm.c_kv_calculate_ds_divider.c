
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct kv_power_info {scalar_t__ lowest_valid; scalar_t__ highest_valid; TYPE_1__* graphics_level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int SclkFrequency; int DeepSleepDivId; } ;


 int EINVAL ;
 int be32_to_cpu (int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_get_sleep_divider_id_from_clock (struct amdgpu_device*,int ,size_t) ;

__attribute__((used)) static int kv_calculate_ds_divider(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 u32 sclk_in_sr = 10000;
 u32 i;

 if (pi->lowest_valid > pi->highest_valid)
  return -EINVAL;

 for (i = pi->lowest_valid; i <= pi->highest_valid; i++) {
  pi->graphics_level[i].DeepSleepDivId =
   kv_get_sleep_divider_id_from_clock(adev,
          be32_to_cpu(pi->graphics_level[i].SclkFrequency),
          sclk_in_sr);
 }
 return 0;
}
