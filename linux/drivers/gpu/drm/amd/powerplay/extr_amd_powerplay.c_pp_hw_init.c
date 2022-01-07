
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct TYPE_2__ {struct pp_hwmgr* pp_handle; } ;
struct amdgpu_device {TYPE_1__ powerplay; } ;


 int hwmgr_hw_init (struct pp_hwmgr*) ;
 int pr_err (char*) ;

__attribute__((used)) static int pp_hw_init(void *handle)
{
 int ret = 0;
 struct amdgpu_device *adev = handle;
 struct pp_hwmgr *hwmgr = adev->powerplay.pp_handle;

 ret = hwmgr_hw_init(hwmgr);

 if (ret)
  pr_err("powerplay hw init failed\n");

 return ret;
}
