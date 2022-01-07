
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int fw_version; } ;
struct TYPE_5__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_3__ pm; TYPE_2__ powerplay; } ;
struct TYPE_4__ {int (* load_firmware ) (int ) ;} ;


 int pr_err (char*) ;
 int stub1 (int ) ;

int amdgpu_pm_load_smu_firmware(struct amdgpu_device *adev, uint32_t *smu_version)
{
 int r;

 if (adev->powerplay.pp_funcs && adev->powerplay.pp_funcs->load_firmware) {
  r = adev->powerplay.pp_funcs->load_firmware(adev->powerplay.pp_handle);
  if (r) {
   pr_err("smu firmware loading failed\n");
   return r;
  }
  *smu_version = adev->pm.fw_version;
 }
 return 0;
}
