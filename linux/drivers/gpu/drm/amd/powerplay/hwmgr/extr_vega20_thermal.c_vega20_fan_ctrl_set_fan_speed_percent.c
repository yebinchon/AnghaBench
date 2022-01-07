
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CG_FDO_CTRL0 ;
 int CG_FDO_CTRL1 ;
 int EINVAL ;
 int FDO_PWM_MODE_STATIC ;
 int FDO_STATIC_DUTY ;
 int FMAX_DUTY100 ;
 int PHM_PlatformCaps_MicrocodeFanControl ;
 scalar_t__ PP_CAP (int ) ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int THM ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int do_div (int,int) ;
 int mmCG_FDO_CTRL0 ;
 int mmCG_FDO_CTRL1 ;
 int vega20_fan_ctrl_set_static_mode (struct pp_hwmgr*,int ) ;
 int vega20_fan_ctrl_stop_smc_fan_control (struct pp_hwmgr*) ;

int vega20_fan_ctrl_set_fan_speed_percent(struct pp_hwmgr *hwmgr,
  uint32_t speed)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t duty100;
 uint32_t duty;
 uint64_t tmp64;

 if (speed > 100)
  speed = 100;

 if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl))
  vega20_fan_ctrl_stop_smc_fan_control(hwmgr);

 duty100 = REG_GET_FIELD(RREG32_SOC15(THM, 0, mmCG_FDO_CTRL1),
        CG_FDO_CTRL1, FMAX_DUTY100);

 if (duty100 == 0)
  return -EINVAL;

 tmp64 = (uint64_t)speed * duty100;
 do_div(tmp64, 100);
 duty = (uint32_t)tmp64;

 WREG32_SOC15(THM, 0, mmCG_FDO_CTRL0,
  REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_FDO_CTRL0),
   CG_FDO_CTRL0, FDO_STATIC_DUTY, duty));

 return vega20_fan_ctrl_set_static_mode(hwmgr, FDO_PWM_MODE_STATIC);
}
