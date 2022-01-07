
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vega20_hwmgr {int disable_dpm_mask; int avfs_exist; int is_tlu_enabled; int is_custom_profile_set; int total_active_cus; scalar_t__ water_marks_bitmap; void* vddci_control; void* mvdd_control; void* vddc_control; } ;
struct TYPE_5__ {int engineClock; int memoryClock; } ;
struct TYPE_6__ {int hardwarePerformanceLevels; int minimumClocksReductionPercentage; int vbiosInterruptId; TYPE_1__ clockStep; int hardwareActivityPerformanceLevels; } ;
struct pp_hwmgr {int workload_mask; int* workload_prority; size_t power_profile_mode; size_t default_power_profile_mode; TYPE_2__ platform_descriptor; struct vega20_hwmgr* backend; struct amdgpu_device* adev; } ;
struct TYPE_7__ {int number; } ;
struct TYPE_8__ {TYPE_3__ cu_info; } ;
struct amdgpu_device {TYPE_4__ gfx; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT ;
 int VEGA20_MAX_HARDWARE_POWERLEVELS ;
 void* VEGA20_VOLTAGE_CONTROL_NONE ;
 struct vega20_hwmgr* kzalloc (int,int ) ;
 int vega20_init_dpm_defaults (struct pp_hwmgr*) ;
 int vega20_set_default_registry_data (struct pp_hwmgr*) ;
 int vega20_set_features_platform_caps (struct pp_hwmgr*) ;
 int vega20_set_private_data_based_on_pptable (struct pp_hwmgr*) ;

__attribute__((used)) static int vega20_hwmgr_backend_init(struct pp_hwmgr *hwmgr)
{
 struct vega20_hwmgr *data;
 struct amdgpu_device *adev = hwmgr->adev;

 data = kzalloc(sizeof(struct vega20_hwmgr), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 hwmgr->backend = data;

 hwmgr->workload_mask = 1 << hwmgr->workload_prority[PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT];
 hwmgr->power_profile_mode = PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT;
 hwmgr->default_power_profile_mode = PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT;

 vega20_set_default_registry_data(hwmgr);

 data->disable_dpm_mask = 0xff;


 data->vddc_control = VEGA20_VOLTAGE_CONTROL_NONE;
 data->mvdd_control = VEGA20_VOLTAGE_CONTROL_NONE;
 data->vddci_control = VEGA20_VOLTAGE_CONTROL_NONE;

 data->water_marks_bitmap = 0;
 data->avfs_exist = 0;

 vega20_set_features_platform_caps(hwmgr);

 vega20_init_dpm_defaults(hwmgr);


 vega20_set_private_data_based_on_pptable(hwmgr);

 data->is_tlu_enabled = 0;

 hwmgr->platform_descriptor.hardwareActivityPerformanceLevels =
   VEGA20_MAX_HARDWARE_POWERLEVELS;
 hwmgr->platform_descriptor.hardwarePerformanceLevels = 2;
 hwmgr->platform_descriptor.minimumClocksReductionPercentage = 50;

 hwmgr->platform_descriptor.vbiosInterruptId = 0x20000400;

 hwmgr->platform_descriptor.clockStep.engineClock = 500;
 hwmgr->platform_descriptor.clockStep.memoryClock = 500;

 data->total_active_cus = adev->gfx.cu_info.number;
 data->is_custom_profile_set = 0;

 return 0;
}
