
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int si_dma_stop (struct amdgpu_device*) ;

__attribute__((used)) static int si_dma_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 si_dma_stop(adev);

 return 0;
}
