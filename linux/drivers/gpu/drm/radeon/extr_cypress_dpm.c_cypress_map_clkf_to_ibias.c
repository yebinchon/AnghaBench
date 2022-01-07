
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ mpll; } ;
struct radeon_device {TYPE_2__ clock; } ;



u32 cypress_map_clkf_to_ibias(struct radeon_device *rdev, u32 clkf)
{
 u32 ref_clk = rdev->clock.mpll.reference_freq;
 u32 vco = clkf * ref_clk;


 if (ref_clk == 10000) {
  if (vco > 500000)
   return 0xC6;
  if (vco > 400000)
   return 0x9D;
  if (vco > 330000)
   return 0x6C;
  if (vco > 250000)
   return 0x2B;
  if (vco > 160000)
   return 0x5B;
  if (vco > 120000)
   return 0x0A;
  return 0x4B;
 }


 if (vco > 250000)
  return 0x8B;
 if (vco > 200000)
  return 0xCC;
 if (vco > 150000)
  return 0x9B;
 return 0x6B;
}
