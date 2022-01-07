
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kv_reset_save_regs {int member_0; } ;
struct amdgpu_device {int flags; scalar_t__ usec_timeout; int has_hw_reset; int pdev; int dev; } ;


 int AMD_IS_APU ;
 int EINVAL ;
 int RREG32 (int ) ;
 int amdgpu_device_pci_config_reset (struct amdgpu_device*) ;
 int dev_info (int ,char*) ;
 int kv_restore_regs_for_reset (struct amdgpu_device*,struct kv_reset_save_regs*) ;
 int kv_save_regs_for_reset (struct amdgpu_device*,struct kv_reset_save_regs*) ;
 int mmCONFIG_MEMSIZE ;
 int pci_clear_master (int ) ;
 int pci_set_master (int ) ;
 int udelay (int) ;

__attribute__((used)) static int cik_gpu_pci_config_reset(struct amdgpu_device *adev)
{
 struct kv_reset_save_regs kv_save = { 0 };
 u32 i;
 int r = -EINVAL;

 dev_info(adev->dev, "GPU pci config reset\n");

 if (adev->flags & AMD_IS_APU)
  kv_save_regs_for_reset(adev, &kv_save);


 pci_clear_master(adev->pdev);

 amdgpu_device_pci_config_reset(adev);

 udelay(100);


 for (i = 0; i < adev->usec_timeout; i++) {
  if (RREG32(mmCONFIG_MEMSIZE) != 0xffffffff) {

   pci_set_master(adev->pdev);
   adev->has_hw_reset = 1;
   r = 0;
   break;
  }
  udelay(1);
 }


 if (adev->flags & AMD_IS_APU)
  kv_restore_regs_for_reset(adev, &kv_save);

 return r;
}
