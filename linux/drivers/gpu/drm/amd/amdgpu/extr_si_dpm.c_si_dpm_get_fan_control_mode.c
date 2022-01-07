
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si_power_info {scalar_t__ fan_is_controlled_by_smc; } ;
struct amdgpu_device {int dummy; } ;


 int CG_FDO_CTRL2 ;
 int FDO_PWM_MODE_MASK ;
 int FDO_PWM_MODE_SHIFT ;
 int RREG32 (int ) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static u32 si_dpm_get_fan_control_mode(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct si_power_info *si_pi = si_get_pi(adev);
 u32 tmp;

 if (si_pi->fan_is_controlled_by_smc)
  return 0;

 tmp = RREG32(CG_FDO_CTRL2) & FDO_PWM_MODE_MASK;
 return (tmp >> FDO_PWM_MODE_SHIFT);
}
