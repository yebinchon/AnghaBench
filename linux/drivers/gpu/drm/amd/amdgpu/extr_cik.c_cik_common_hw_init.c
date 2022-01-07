
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_init_golden_registers (struct amdgpu_device*) ;
 int cik_pcie_gen3_enable (struct amdgpu_device*) ;
 int cik_program_aspm (struct amdgpu_device*) ;

__attribute__((used)) static int cik_common_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 cik_init_golden_registers(adev);

 cik_pcie_gen3_enable(adev);

 cik_program_aspm(adev);

 return 0;
}
