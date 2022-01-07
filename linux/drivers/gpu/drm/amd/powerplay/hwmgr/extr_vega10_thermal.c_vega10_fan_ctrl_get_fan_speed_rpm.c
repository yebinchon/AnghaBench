
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vega10_hwmgr {TYPE_3__* smu_features; } ;
struct TYPE_4__ {scalar_t__ bNoFan; } ;
struct TYPE_5__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {struct amdgpu_device* adev; TYPE_2__ thermal_controller; struct vega10_hwmgr* backend; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ supported; } ;


 int CG_TACH_STATUS ;
 int EINVAL ;
 size_t GNLD_FAN_CONTROL ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int TACH_PERIOD ;
 int THM ;
 int amdgpu_asic_get_xclk (struct amdgpu_device*) ;
 int mmCG_TACH_STATUS ;
 int vega10_get_current_rpm (struct pp_hwmgr*,int*) ;

int vega10_fan_ctrl_get_fan_speed_rpm(struct pp_hwmgr *hwmgr, uint32_t *speed)
{
 struct amdgpu_device *adev = hwmgr->adev;
 struct vega10_hwmgr *data = hwmgr->backend;
 uint32_t tach_period;
 uint32_t crystal_clock_freq;
 int result = 0;

 if (hwmgr->thermal_controller.fanInfo.bNoFan)
  return -1;

 if (data->smu_features[GNLD_FAN_CONTROL].supported) {
  result = vega10_get_current_rpm(hwmgr, speed);
 } else {
  tach_period =
   REG_GET_FIELD(RREG32_SOC15(THM, 0, mmCG_TACH_STATUS),
       CG_TACH_STATUS,
       TACH_PERIOD);

  if (tach_period == 0)
   return -EINVAL;

  crystal_clock_freq = amdgpu_asic_get_xclk((struct amdgpu_device *)hwmgr->adev);

  *speed = 60 * crystal_clock_freq * 10000 / tach_period;
 }

 return result;
}
