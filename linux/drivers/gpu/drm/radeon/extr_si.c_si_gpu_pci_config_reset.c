
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {scalar_t__ usec_timeout; int pdev; int dev; } ;
struct evergreen_mc_save {int dummy; } ;


 scalar_t__ CONFIG_MEMSIZE ;
 scalar_t__ CP_CE_HALT ;
 scalar_t__ CP_ME_CNTL ;
 scalar_t__ CP_ME_HALT ;
 scalar_t__ CP_PFP_HALT ;
 scalar_t__ DMA0_REGISTER_OFFSET ;
 scalar_t__ DMA1_REGISTER_OFFSET ;
 scalar_t__ DMA_RB_CNTL ;
 scalar_t__ DMA_RB_ENABLE ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,scalar_t__) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int evergreen_mc_stop (struct radeon_device*,struct evergreen_mc_save*) ;
 scalar_t__ evergreen_mc_wait_for_idle (struct radeon_device*) ;
 int pci_clear_master (int ) ;
 int radeon_pci_config_reset (struct radeon_device*) ;
 int si_fini_cg (struct radeon_device*) ;
 int si_fini_pg (struct radeon_device*) ;
 int si_rlc_stop (struct radeon_device*) ;
 int si_set_clk_bypass_mode (struct radeon_device*) ;
 int si_spll_powerdown (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static void si_gpu_pci_config_reset(struct radeon_device *rdev)
{
 struct evergreen_mc_save save;
 u32 tmp, i;

 dev_info(rdev->dev, "GPU pci config reset\n");




 si_fini_pg(rdev);
 si_fini_cg(rdev);


 WREG32(CP_ME_CNTL, CP_ME_HALT | CP_PFP_HALT | CP_CE_HALT);

 tmp = RREG32(DMA_RB_CNTL + DMA0_REGISTER_OFFSET);
 tmp &= ~DMA_RB_ENABLE;
 WREG32(DMA_RB_CNTL + DMA0_REGISTER_OFFSET, tmp);

 tmp = RREG32(DMA_RB_CNTL + DMA1_REGISTER_OFFSET);
 tmp &= ~DMA_RB_ENABLE;
 WREG32(DMA_RB_CNTL + DMA1_REGISTER_OFFSET, tmp);



 si_rlc_stop(rdev);

 udelay(50);


 evergreen_mc_stop(rdev, &save);
 if (evergreen_mc_wait_for_idle(rdev)) {
  dev_warn(rdev->dev, "Wait for MC idle timed out !\n");
 }


 si_set_clk_bypass_mode(rdev);

 si_spll_powerdown(rdev);

 pci_clear_master(rdev->pdev);

 radeon_pci_config_reset(rdev);

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(CONFIG_MEMSIZE) != 0xffffffff)
   break;
  udelay(1);
 }
}
