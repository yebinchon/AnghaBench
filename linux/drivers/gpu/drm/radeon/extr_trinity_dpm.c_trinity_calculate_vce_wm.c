
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct radeon_device {int dummy; } ;



__attribute__((used)) static u8 trinity_calculate_vce_wm(struct radeon_device *rdev, u32 sclk)
{
 if (sclk < 20000)
  return 1;
 return 0;
}
