
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int pdev; } ;


 int RADEON_ASIC_RESET_DATA ;
 int pci_write_config_dword (int ,int,int ) ;

void radeon_pci_config_reset(struct radeon_device *rdev)
{
 pci_write_config_dword(rdev->pdev, 0x7c, RADEON_ASIC_RESET_DATA);
}
