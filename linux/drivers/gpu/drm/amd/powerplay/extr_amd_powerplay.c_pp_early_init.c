
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pp_handle; } ;
struct amdgpu_device {TYPE_1__ powerplay; } ;


 int EINVAL ;
 int amd_powerplay_create (struct amdgpu_device*) ;
 int hwmgr_early_init (int ) ;

__attribute__((used)) static int pp_early_init(void *handle)
{
 int ret;
 struct amdgpu_device *adev = handle;

 ret = amd_powerplay_create(adev);

 if (ret != 0)
  return ret;

 ret = hwmgr_early_init(adev->powerplay.pp_handle);
 if (ret)
  return -EINVAL;

 return 0;
}
