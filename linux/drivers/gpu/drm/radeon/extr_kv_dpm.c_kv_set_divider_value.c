
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct atom_clock_dividers {scalar_t__ post_div; } ;
struct TYPE_2__ {int SclkFrequency; scalar_t__ SclkDid; } ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int cpu_to_be32 (size_t) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,size_t,int,struct atom_clock_dividers*) ;

__attribute__((used)) static int kv_set_divider_value(struct radeon_device *rdev,
    u32 index, u32 sclk)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 struct atom_clock_dividers dividers;
 int ret;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          sclk, 0, &dividers);
 if (ret)
  return ret;

 pi->graphics_level[index].SclkDid = (u8)dividers.post_div;
 pi->graphics_level[index].SclkFrequency = cpu_to_be32(sclk);

 return 0;
}
