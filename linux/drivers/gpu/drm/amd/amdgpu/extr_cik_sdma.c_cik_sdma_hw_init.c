
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_sdma_start (struct amdgpu_device*) ;

__attribute__((used)) static int cik_sdma_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = cik_sdma_start(adev);
 if (r)
  return r;

 return r;
}
