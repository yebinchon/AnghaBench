
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_THERMAL_STATUS ;
 int RREG32 (int ) ;

int sumo_get_temp(struct radeon_device *rdev)
{
 u32 temp = RREG32(CG_THERMAL_STATUS) & 0xff;
 int actual_temp = temp - 49;

 return actual_temp * 1000;
}
