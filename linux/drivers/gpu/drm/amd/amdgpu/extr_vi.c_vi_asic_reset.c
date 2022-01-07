
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_atombios_scratch_regs_engine_hung (struct amdgpu_device*,int) ;
 int vi_gpu_pci_config_reset (struct amdgpu_device*) ;

__attribute__((used)) static int vi_asic_reset(struct amdgpu_device *adev)
{
 int r;

 amdgpu_atombios_scratch_regs_engine_hung(adev, 1);

 r = vi_gpu_pci_config_reset(adev);

 amdgpu_atombios_scratch_regs_engine_hung(adev, 0);

 return r;
}
