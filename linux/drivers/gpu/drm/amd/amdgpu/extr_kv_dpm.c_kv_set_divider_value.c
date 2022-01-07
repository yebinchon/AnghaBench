
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct atom_clock_dividers {scalar_t__ post_div; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int SclkFrequency; scalar_t__ SclkDid; } ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int amdgpu_atombios_get_clock_dividers (struct amdgpu_device*,int ,size_t,int,struct atom_clock_dividers*) ;
 int cpu_to_be32 (size_t) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int kv_set_divider_value(struct amdgpu_device *adev,
    u32 index, u32 sclk)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 struct atom_clock_dividers dividers;
 int ret;

 ret = amdgpu_atombios_get_clock_dividers(adev, COMPUTE_ENGINE_PLL_PARAM,
       sclk, 0, &dividers);
 if (ret)
  return ret;

 pi->graphics_level[index].SclkDid = (u8)dividers.post_div;
 pi->graphics_level[index].SclkFrequency = cpu_to_be32(sclk);

 return 0;
}
