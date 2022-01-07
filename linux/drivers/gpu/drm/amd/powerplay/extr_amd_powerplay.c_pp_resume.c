
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct TYPE_2__ {struct pp_hwmgr* pp_handle; } ;
struct amdgpu_device {TYPE_1__ powerplay; } ;


 int hwmgr_resume (struct pp_hwmgr*) ;

__attribute__((used)) static int pp_resume(void *handle)
{
 struct amdgpu_device *adev = handle;
 struct pp_hwmgr *hwmgr = adev->powerplay.pp_handle;

 return hwmgr_resume(hwmgr);
}
