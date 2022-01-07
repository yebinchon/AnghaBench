
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_MULT_THERMAL_STATUS ;
 int CTF_TEMP_MASK ;
 int CTF_TEMP_SHIFT ;
 int RREG32 (int ) ;

int si_get_temp(struct radeon_device *rdev)
{
 u32 temp;
 int actual_temp = 0;

 temp = (RREG32(CG_MULT_THERMAL_STATUS) & CTF_TEMP_MASK) >>
  CTF_TEMP_SHIFT;

 if (temp & 0x200)
  actual_temp = 255;
 else
  actual_temp = temp & 0x1ff;

 actual_temp = (actual_temp * 1000);

 return actual_temp;
}
