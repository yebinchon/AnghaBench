
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct TYPE_4__ {int * fw; } ;
struct TYPE_3__ {struct pp_hwmgr* pp_handle; } ;
struct amdgpu_device {TYPE_2__ pm; TYPE_1__ powerplay; } ;


 int hwmgr_sw_fini (struct pp_hwmgr*) ;
 int release_firmware (int *) ;

__attribute__((used)) static int pp_sw_fini(void *handle)
{
 struct amdgpu_device *adev = handle;
 struct pp_hwmgr *hwmgr = adev->powerplay.pp_handle;

 hwmgr_sw_fini(hwmgr);

 release_firmware(adev->pm.fw);
 adev->pm.fw = ((void*)0);

 return 0;
}
