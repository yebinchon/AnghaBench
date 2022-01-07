
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw_dmcu; } ;
struct amdgpu_device {TYPE_1__ dm; } ;


 int release_firmware (int *) ;

__attribute__((used)) static int dm_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if(adev->dm.fw_dmcu) {
  release_firmware(adev->dm.fw_dmcu);
  adev->dm.fw_dmcu = ((void*)0);
 }

 return 0;
}
