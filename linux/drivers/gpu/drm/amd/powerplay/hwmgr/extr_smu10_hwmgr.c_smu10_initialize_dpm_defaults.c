
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu10_hwmgr {int dce_slow_sclk_threshold; int is_nb_dpm_enabled; int dpm_flags; int need_min_deep_sleep_dcefclk; scalar_t__ deep_sleep_dcefclk; scalar_t__ num_active_display; scalar_t__ thermal_auto_throttling_treshold; } ;
struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; scalar_t__ backend; } ;


 int PHM_PlatformCaps_PowerPlaySupport ;
 int PHM_PlatformCaps_SclkDeepSleep ;
 int PHM_PlatformCaps_SclkThrottleLowNotification ;
 int phm_cap_set (int ,int ) ;
 int phm_cap_unset (int ,int ) ;

__attribute__((used)) static int smu10_initialize_dpm_defaults(struct pp_hwmgr *hwmgr)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);

 smu10_data->dce_slow_sclk_threshold = 30000;
 smu10_data->thermal_auto_throttling_treshold = 0;
 smu10_data->is_nb_dpm_enabled = 1;
 smu10_data->dpm_flags = 1;
 smu10_data->need_min_deep_sleep_dcefclk = 1;
 smu10_data->num_active_display = 0;
 smu10_data->deep_sleep_dcefclk = 0;

 phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_SclkDeepSleep);

 phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
    PHM_PlatformCaps_SclkThrottleLowNotification);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
    PHM_PlatformCaps_PowerPlaySupport);
 return 0;
}
