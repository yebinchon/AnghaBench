
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_THERMAL_INT_CTRL ;
 int RREG32_SMC (int ) ;
 int THERM_INTH_MASK ;
 int THERM_INTL_MASK ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void kv_enable_thermal_int(struct radeon_device *rdev, bool enable)
{
 u32 thermal_int;

 thermal_int = RREG32_SMC(CG_THERMAL_INT_CTRL);
 if (enable)
  thermal_int |= THERM_INTH_MASK | THERM_INTL_MASK;
 else
  thermal_int &= ~(THERM_INTH_MASK | THERM_INTL_MASK);
 WREG32_SMC(CG_THERMAL_INT_CTRL, thermal_int);

}
