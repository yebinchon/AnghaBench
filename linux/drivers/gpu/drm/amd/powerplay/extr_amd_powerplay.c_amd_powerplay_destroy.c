
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {struct pp_hwmgr* hardcode_pp_table; } ;
struct TYPE_2__ {struct pp_hwmgr* pp_handle; } ;
struct amdgpu_device {TYPE_1__ powerplay; } ;


 int kfree (struct pp_hwmgr*) ;

__attribute__((used)) static void amd_powerplay_destroy(struct amdgpu_device *adev)
{
 struct pp_hwmgr *hwmgr = adev->powerplay.pp_handle;

 kfree(hwmgr->hardcode_pp_table);
 hwmgr->hardcode_pp_table = ((void*)0);

 kfree(hwmgr);
 hwmgr = ((void*)0);
}
