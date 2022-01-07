
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;



u32 rv770_map_clkf_to_ibias(struct radeon_device *rdev, u32 clkf)
{
 if (clkf <= 0x10)
  return 0x4B;
 if (clkf <= 0x19)
  return 0x5B;
 if (clkf <= 0x21)
  return 0x2B;
 if (clkf <= 0x27)
  return 0x6C;
 if (clkf <= 0x31)
  return 0x9D;
 return 0xC6;
}
