
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int load_dmcu_fw (struct amdgpu_device*) ;

__attribute__((used)) static int dm_sw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return load_dmcu_fw(adev);
}
