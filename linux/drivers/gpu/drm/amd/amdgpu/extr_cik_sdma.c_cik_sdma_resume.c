
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_sdma_hw_init (struct amdgpu_device*) ;
 int cik_sdma_soft_reset (void*) ;

__attribute__((used)) static int cik_sdma_resume(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 cik_sdma_soft_reset(handle);

 return cik_sdma_hw_init(adev);
}
