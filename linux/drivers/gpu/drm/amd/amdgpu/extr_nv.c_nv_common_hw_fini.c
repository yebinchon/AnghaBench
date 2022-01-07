
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int nv_enable_doorbell_aperture (struct amdgpu_device*,int) ;

__attribute__((used)) static int nv_common_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 nv_enable_doorbell_aperture(adev, 0);

 return 0;
}
