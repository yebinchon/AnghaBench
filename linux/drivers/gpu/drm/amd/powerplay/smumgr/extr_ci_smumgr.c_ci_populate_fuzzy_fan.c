
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int usFanOutputSensitivity; int usDefaultFanOutputSensitivity; } ;
struct TYPE_6__ {TYPE_2__ advanceFanControlParameters; } ;
struct pp_hwmgr {TYPE_3__ thermal_controller; scalar_t__ smu_backend; } ;
struct TYPE_4__ {int FuzzyFan_PwmSetDelta; } ;
struct ci_smumgr {TYPE_1__ power_tune_table; } ;


 int CONVERT_FROM_HOST_TO_SMC_US (int) ;

__attribute__((used)) static int ci_populate_fuzzy_fan(struct pp_hwmgr *hwmgr, uint32_t fuse_table_offset)
{
 uint16_t tmp;
 struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);

 if ((hwmgr->thermal_controller.advanceFanControlParameters.usFanOutputSensitivity & (1 << 15))
  || 0 == hwmgr->thermal_controller.advanceFanControlParameters.usFanOutputSensitivity)
  tmp = hwmgr->thermal_controller.advanceFanControlParameters.usFanOutputSensitivity;
 else
  tmp = hwmgr->thermal_controller.advanceFanControlParameters.usDefaultFanOutputSensitivity;

 smu_data->power_tune_table.FuzzyFan_PwmSetDelta = CONVERT_FROM_HOST_TO_SMC_US(tmp);

 return 0;
}
