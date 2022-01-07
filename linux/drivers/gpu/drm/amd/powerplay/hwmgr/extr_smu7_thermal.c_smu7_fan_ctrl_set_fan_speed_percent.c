
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ bNoFan; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {int device; TYPE_2__ thermal_controller; } ;


 int CGS_IND_REG__SMC ;
 int CG_FDO_CTRL0 ;
 int CG_FDO_CTRL1 ;
 int EINVAL ;
 int FDO_PWM_MODE_STATIC ;
 int FDO_STATIC_DUTY ;
 int FMAX_DUTY100 ;
 int PHM_PlatformCaps_MicrocodeFanControl ;
 int PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 scalar_t__ PP_CAP (int ) ;
 int do_div (int,int) ;
 int smu7_fan_ctrl_set_static_mode (struct pp_hwmgr*,int ) ;
 int smu7_fan_ctrl_stop_smc_fan_control (struct pp_hwmgr*) ;

int smu7_fan_ctrl_set_fan_speed_percent(struct pp_hwmgr *hwmgr,
  uint32_t speed)
{
 uint32_t duty100;
 uint32_t duty;
 uint64_t tmp64;

 if (hwmgr->thermal_controller.fanInfo.bNoFan)
  return 0;

 if (speed > 100)
  speed = 100;

 if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl))
  smu7_fan_ctrl_stop_smc_fan_control(hwmgr);

 duty100 = PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_FDO_CTRL1, FMAX_DUTY100);

 if (duty100 == 0)
  return -EINVAL;

 tmp64 = (uint64_t)speed * duty100;
 do_div(tmp64, 100);
 duty = (uint32_t)tmp64;

 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_FDO_CTRL0, FDO_STATIC_DUTY, duty);

 return smu7_fan_ctrl_set_static_mode(hwmgr, FDO_PWM_MODE_STATIC);
}
