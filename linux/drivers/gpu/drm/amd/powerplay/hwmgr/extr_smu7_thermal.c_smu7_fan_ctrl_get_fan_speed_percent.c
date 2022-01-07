
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ bNoFan; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {int device; TYPE_2__ thermal_controller; } ;


 int CGS_IND_REG__SMC ;
 int CG_FDO_CTRL1 ;
 int CG_THERMAL_STATUS ;
 int EINVAL ;
 int ENODEV ;
 int FDO_PWM_DUTY ;
 int FMAX_DUTY100 ;
 scalar_t__ PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int do_div (int,scalar_t__) ;

int smu7_fan_ctrl_get_fan_speed_percent(struct pp_hwmgr *hwmgr,
  uint32_t *speed)
{
 uint32_t duty100;
 uint32_t duty;
 uint64_t tmp64;

 if (hwmgr->thermal_controller.fanInfo.bNoFan)
  return -ENODEV;

 duty100 = PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_FDO_CTRL1, FMAX_DUTY100);
 duty = PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_THERMAL_STATUS, FDO_PWM_DUTY);

 if (duty100 == 0)
  return -EINVAL;


 tmp64 = (uint64_t)duty * 100;
 do_div(tmp64, duty100);
 *speed = (uint32_t)tmp64;

 if (*speed > 100)
  *speed = 100;

 return 0;
}
