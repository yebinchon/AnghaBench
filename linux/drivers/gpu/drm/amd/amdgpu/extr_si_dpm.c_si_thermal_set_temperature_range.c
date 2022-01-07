
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min_temp; int max_temp; } ;
struct TYPE_5__ {TYPE_1__ thermal; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int CG_THERMAL_CTRL ;
 int CG_THERMAL_INT ;
 int DIG_THERM_DPM (int) ;
 int DIG_THERM_DPM_MASK ;
 int DIG_THERM_INTH (int) ;
 int DIG_THERM_INTH_MASK ;
 int DIG_THERM_INTL (int) ;
 int DIG_THERM_INTL_MASK ;
 int DRM_ERROR (char*,int,int) ;
 int EINVAL ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static int si_thermal_set_temperature_range(struct amdgpu_device *adev,
         int min_temp, int max_temp)
{
 int low_temp = 0 * 1000;
 int high_temp = 255 * 1000;

 if (low_temp < min_temp)
  low_temp = min_temp;
 if (high_temp > max_temp)
  high_temp = max_temp;
 if (high_temp < low_temp) {
  DRM_ERROR("invalid thermal range: %d - %d\n", low_temp, high_temp);
  return -EINVAL;
 }

 WREG32_P(CG_THERMAL_INT, DIG_THERM_INTH(high_temp / 1000), ~DIG_THERM_INTH_MASK);
 WREG32_P(CG_THERMAL_INT, DIG_THERM_INTL(low_temp / 1000), ~DIG_THERM_INTL_MASK);
 WREG32_P(CG_THERMAL_CTRL, DIG_THERM_DPM(high_temp / 1000), ~DIG_THERM_DPM_MASK);

 adev->pm.dpm.thermal.min_temp = low_temp;
 adev->pm.dpm.thermal.max_temp = high_temp;

 return 0;
}
