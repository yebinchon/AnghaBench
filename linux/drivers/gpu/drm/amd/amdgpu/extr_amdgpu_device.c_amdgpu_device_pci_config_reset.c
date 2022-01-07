
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pdev; } ;


 int AMDGPU_ASIC_RESET_DATA ;
 int pci_write_config_dword (int ,int,int ) ;

void amdgpu_device_pci_config_reset(struct amdgpu_device *adev)
{
 pci_write_config_dword(adev->pdev, 0x7c, AMDGPU_ASIC_RESET_DATA);
}
