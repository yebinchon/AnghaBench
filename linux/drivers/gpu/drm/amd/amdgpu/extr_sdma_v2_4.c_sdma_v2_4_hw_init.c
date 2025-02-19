
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int sdma_v2_4_init_golden_registers (struct amdgpu_device*) ;
 int sdma_v2_4_start (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v2_4_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 sdma_v2_4_init_golden_registers(adev);

 r = sdma_v2_4_start(adev);
 if (r)
  return r;

 return r;
}
