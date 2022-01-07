
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32_SMC (int) ;

int kv_get_temp(struct radeon_device *rdev)
{
 u32 temp;
 int actual_temp = 0;

 temp = RREG32_SMC(0xC0300E0C);

 if (temp)
  actual_temp = (temp / 8) - 49;
 else
  actual_temp = 0;

 actual_temp = actual_temp * 1000;

 return actual_temp;
}
