
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int vi_enable_doorbell_aperture (struct amdgpu_device*,int) ;
 int vi_init_golden_registers (struct amdgpu_device*) ;
 int vi_pcie_gen3_enable (struct amdgpu_device*) ;
 int vi_program_aspm (struct amdgpu_device*) ;

__attribute__((used)) static int vi_common_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 vi_init_golden_registers(adev);

 vi_pcie_gen3_enable(adev);

 vi_program_aspm(adev);

 vi_enable_doorbell_aperture(adev, 1);

 return 0;
}
