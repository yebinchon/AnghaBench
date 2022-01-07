
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int sdma_v4_0_hw_init (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v4_0_resume(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return sdma_v4_0_hw_init(adev);
}
