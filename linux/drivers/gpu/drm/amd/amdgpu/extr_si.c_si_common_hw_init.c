
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int si_fix_pci_max_read_req_size (struct amdgpu_device*) ;
 int si_init_golden_registers (struct amdgpu_device*) ;
 int si_pcie_gen3_enable (struct amdgpu_device*) ;
 int si_program_aspm (struct amdgpu_device*) ;

__attribute__((used)) static int si_common_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 si_fix_pci_max_read_req_size(adev);
 si_init_golden_registers(adev);
 si_pcie_gen3_enable(adev);
 si_program_aspm(adev);

 return 0;
}
