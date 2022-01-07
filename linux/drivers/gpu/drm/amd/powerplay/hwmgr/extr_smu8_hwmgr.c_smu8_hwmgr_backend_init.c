
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu8_hwmgr {int dummy; } ;
struct TYPE_2__ {int hardwareActivityPerformanceLevels; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; struct smu8_hwmgr* backend; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SMU8_MAX_HARDWARE_POWERLEVELS ;
 struct smu8_hwmgr* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int smu8_construct_boot_state (struct pp_hwmgr*) ;
 int smu8_get_system_info_data (struct pp_hwmgr*) ;
 int smu8_initialize_dpm_defaults (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_hwmgr_backend_init(struct pp_hwmgr *hwmgr)
{
 int result = 0;
 struct smu8_hwmgr *data;

 data = kzalloc(sizeof(struct smu8_hwmgr), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 hwmgr->backend = data;

 result = smu8_initialize_dpm_defaults(hwmgr);
 if (result != 0) {
  pr_err("smu8_initialize_dpm_defaults failed\n");
  return result;
 }

 result = smu8_get_system_info_data(hwmgr);
 if (result != 0) {
  pr_err("smu8_get_system_info_data failed\n");
  return result;
 }

 smu8_construct_boot_state(hwmgr);

 hwmgr->platform_descriptor.hardwareActivityPerformanceLevels = SMU8_MAX_HARDWARE_POWERLEVELS;

 return result;
}
