
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct amdgpu_device {scalar_t__ usec_timeout; TYPE_1__* nbio_funcs; int pdev; int dev; } ;
struct TYPE_2__ {scalar_t__ (* get_memsize ) (struct amdgpu_device*) ;} ;


 int amdgpu_atombios_scratch_regs_engine_hung (struct amdgpu_device*,int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int pci_clear_master (int ) ;
 int pci_restore_state (int ) ;
 int pci_save_state (int ) ;
 int psp_gpu_reset (struct amdgpu_device*) ;
 scalar_t__ stub1 (struct amdgpu_device*) ;
 int udelay (int) ;

__attribute__((used)) static int nv_asic_mode1_reset(struct amdgpu_device *adev)
{
 u32 i;
 int ret = 0;

 amdgpu_atombios_scratch_regs_engine_hung(adev, 1);

 dev_info(adev->dev, "GPU mode1 reset\n");


 pci_clear_master(adev->pdev);

 pci_save_state(adev->pdev);

 ret = psp_gpu_reset(adev);
 if (ret)
  dev_err(adev->dev, "GPU mode1 reset failed\n");

 pci_restore_state(adev->pdev);


 for (i = 0; i < adev->usec_timeout; i++) {
  u32 memsize = adev->nbio_funcs->get_memsize(adev);

  if (memsize != 0xffffffff)
   break;
  udelay(1);
 }

 amdgpu_atombios_scratch_regs_engine_hung(adev, 0);

 return ret;
}
