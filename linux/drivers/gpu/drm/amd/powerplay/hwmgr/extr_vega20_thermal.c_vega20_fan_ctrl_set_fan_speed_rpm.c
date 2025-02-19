
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CG_TACH_CTRL ;
 int EINVAL ;
 int FDO_PWM_MODE_STATIC_RPM ;
 int PHM_PlatformCaps_MicrocodeFanControl ;
 scalar_t__ PP_CAP (int ) ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int TARGET_PERIOD ;
 int THM ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int amdgpu_asic_get_xclk (struct amdgpu_device*) ;
 int mmCG_TACH_CTRL ;
 int vega20_fan_ctrl_set_static_mode (struct pp_hwmgr*,int ) ;
 int vega20_fan_ctrl_stop_smc_fan_control (struct pp_hwmgr*) ;

int vega20_fan_ctrl_set_fan_speed_rpm(struct pp_hwmgr *hwmgr, uint32_t speed)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t tach_period, crystal_clock_freq;
 int result = 0;

 if (!speed)
  return -EINVAL;

 if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl)) {
  result = vega20_fan_ctrl_stop_smc_fan_control(hwmgr);
  if (result)
   return result;
 }

 crystal_clock_freq = amdgpu_asic_get_xclk((struct amdgpu_device *)hwmgr->adev);
 tach_period = 60 * crystal_clock_freq * 10000 / (8 * speed);
 WREG32_SOC15(THM, 0, mmCG_TACH_CTRL,
   REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_TACH_CTRL),
    CG_TACH_CTRL, TARGET_PERIOD,
    tach_period));

 return vega20_fan_ctrl_set_static_mode(hwmgr, FDO_PWM_MODE_STATIC_RPM);
}
