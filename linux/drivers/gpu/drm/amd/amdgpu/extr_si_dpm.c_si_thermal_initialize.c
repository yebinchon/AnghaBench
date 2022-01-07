
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ fan_pulses_per_revolution; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int CG_FDO_CTRL2 ;
 int CG_TACH_CTRL ;
 int EDGE_PER_REV (scalar_t__) ;
 int EDGE_PER_REV_MASK ;
 int RREG32 (int ) ;
 int TACH_PWM_RESP_RATE (int) ;
 int TACH_PWM_RESP_RATE_MASK ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void si_thermal_initialize(struct amdgpu_device *adev)
{
 u32 tmp;

 if (adev->pm.fan_pulses_per_revolution) {
  tmp = RREG32(CG_TACH_CTRL) & ~EDGE_PER_REV_MASK;
  tmp |= EDGE_PER_REV(adev->pm.fan_pulses_per_revolution -1);
  WREG32(CG_TACH_CTRL, tmp);
 }

 tmp = RREG32(CG_FDO_CTRL2) & ~TACH_PWM_RESP_RATE_MASK;
 tmp |= TACH_PWM_RESP_RATE(0x28);
 WREG32(CG_FDO_CTRL2, tmp);
}
