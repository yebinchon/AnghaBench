
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int ucTachometerPulsesPerRevolution; scalar_t__ bNoFan; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {scalar_t__ adev; int device; TYPE_2__ thermal_controller; } ;
struct amdgpu_device {int dummy; } ;


 int CGS_IND_REG__SMC ;
 int CG_TACH_STATUS ;
 int EINVAL ;
 int ENODEV ;
 int PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int TACH_PERIOD ;
 int amdgpu_asic_get_xclk (struct amdgpu_device*) ;

int smu7_fan_ctrl_get_fan_speed_rpm(struct pp_hwmgr *hwmgr, uint32_t *speed)
{
 uint32_t tach_period;
 uint32_t crystal_clock_freq;

 if (hwmgr->thermal_controller.fanInfo.bNoFan ||
     !hwmgr->thermal_controller.fanInfo.ucTachometerPulsesPerRevolution)
  return -ENODEV;

 tach_period = PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_TACH_STATUS, TACH_PERIOD);

 if (tach_period == 0)
  return -EINVAL;

 crystal_clock_freq = amdgpu_asic_get_xclk((struct amdgpu_device *)hwmgr->adev);

 *speed = 60 * crystal_clock_freq * 10000 / tach_period;

 return 0;
}
