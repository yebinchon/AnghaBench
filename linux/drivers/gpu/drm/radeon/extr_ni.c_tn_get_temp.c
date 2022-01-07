
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32_SMC (int ) ;
 int TN_CURRENT_GNB_TEMP ;

int tn_get_temp(struct radeon_device *rdev)
{
 u32 temp = RREG32_SMC(TN_CURRENT_GNB_TEMP) & 0x7ff;
 int actual_temp = (temp / 8) - 49;

 return actual_temp * 1000;
}
