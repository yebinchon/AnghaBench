
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {scalar_t__ usec_timeout; int dev; int pdev; } ;
struct evergreen_mc_save {int dummy; } ;


 int CONFIG_MEMSIZE ;
 int CP_ME_CNTL ;
 scalar_t__ CP_ME_HALT ;
 scalar_t__ CP_PFP_HALT ;
 int DMA_RB_CNTL ;
 scalar_t__ DMA_RB_ENABLE ;
 int RREG32 (int ) ;
 int WREG32 (int ,scalar_t__) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int evergreen_mc_stop (struct radeon_device*,struct evergreen_mc_save*) ;
 scalar_t__ evergreen_mc_wait_for_idle (struct radeon_device*) ;
 int pci_clear_master (int ) ;
 int r600_rlc_stop (struct radeon_device*) ;
 int radeon_pci_config_reset (struct radeon_device*) ;
 int rv770_set_clk_bypass_mode (struct radeon_device*) ;
 int udelay (int) ;

void evergreen_gpu_pci_config_reset(struct radeon_device *rdev)
{
 struct evergreen_mc_save save;
 u32 tmp, i;

 dev_info(rdev->dev, "GPU pci config reset\n");




 WREG32(CP_ME_CNTL, CP_ME_HALT | CP_PFP_HALT);
 udelay(50);

 tmp = RREG32(DMA_RB_CNTL);
 tmp &= ~DMA_RB_ENABLE;
 WREG32(DMA_RB_CNTL, tmp);



 r600_rlc_stop(rdev);

 udelay(50);


 rv770_set_clk_bypass_mode(rdev);

 pci_clear_master(rdev->pdev);

 evergreen_mc_stop(rdev, &save);
 if (evergreen_mc_wait_for_idle(rdev)) {
  dev_warn(rdev->dev, "Wait for MC idle timed out !\n");
 }

 radeon_pci_config_reset(rdev);

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(CONFIG_MEMSIZE) != 0xffffffff)
   break;
  udelay(1);
 }
}
