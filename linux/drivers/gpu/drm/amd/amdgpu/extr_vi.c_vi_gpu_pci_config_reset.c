
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {scalar_t__ usec_timeout; int has_hw_reset; int pdev; int dev; } ;


 int EINVAL ;
 int RREG32 (int ) ;
 int amdgpu_device_pci_config_reset (struct amdgpu_device*) ;
 int dev_info (int ,char*) ;
 int mmCONFIG_MEMSIZE ;
 int pci_clear_master (int ) ;
 int pci_set_master (int ) ;
 int udelay (int) ;

__attribute__((used)) static int vi_gpu_pci_config_reset(struct amdgpu_device *adev)
{
 u32 i;

 dev_info(adev->dev, "GPU pci config reset\n");


 pci_clear_master(adev->pdev);

 amdgpu_device_pci_config_reset(adev);

 udelay(100);


 for (i = 0; i < adev->usec_timeout; i++) {
  if (RREG32(mmCONFIG_MEMSIZE) != 0xffffffff) {

   pci_set_master(adev->pdev);
   adev->has_hw_reset = 1;
   return 0;
  }
  udelay(1);
 }
 return -EINVAL;
}
