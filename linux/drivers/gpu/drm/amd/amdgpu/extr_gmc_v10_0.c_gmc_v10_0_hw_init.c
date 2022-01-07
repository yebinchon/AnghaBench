
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gmc_v10_0_gart_enable (struct amdgpu_device*) ;
 int gmc_v10_0_init_golden_registers (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v10_0_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 gmc_v10_0_init_golden_registers(adev);

 r = gmc_v10_0_gart_enable(adev);
 if (r)
  return r;

 return 0;
}
