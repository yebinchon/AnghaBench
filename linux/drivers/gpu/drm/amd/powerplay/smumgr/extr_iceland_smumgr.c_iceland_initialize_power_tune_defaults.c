
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; scalar_t__ smu_backend; } ;
struct iceland_smumgr {int * power_tune_defaults; } ;
struct amdgpu_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;






 int defaults_iceland ;
 int defaults_icelandpro ;
 int defaults_icelandxt ;
 int pr_warn (char*) ;

__attribute__((used)) static void iceland_initialize_power_tune_defaults(struct pp_hwmgr *hwmgr)
{
 struct iceland_smumgr *smu_data = (struct iceland_smumgr *)(hwmgr->smu_backend);
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t dev_id;

 dev_id = adev->pdev->device;

 switch (dev_id) {
 case 131:
 case 128:
  smu_data->power_tune_defaults = &defaults_icelandxt;
  break;

 case 130:
 case 129:
  smu_data->power_tune_defaults = &defaults_icelandpro;
  break;
 default:
  smu_data->power_tune_defaults = &defaults_iceland;
  pr_warn("Unknown V.I. Device ID.\n");
  break;
 }
 return;
}
