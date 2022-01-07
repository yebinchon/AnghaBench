
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rv515_mc_save {int dummy; } ;
struct radeon_device {scalar_t__ family; scalar_t__ usec_timeout; int dev; int pdev; } ;


 int BIF_SCRATCH0 ;
 int BUS_CNTL ;
 scalar_t__ CHIP_RV770 ;
 int CONFIG_MEMSIZE ;
 int DMA_RB_CNTL ;
 scalar_t__ DMA_RB_ENABLE ;
 int RLC_CNTL ;
 int RREG32 (int ) ;
 int R_0086D8_CP_ME_CNTL ;
 scalar_t__ SOFT_RESET_BIF ;
 int SRBM_SOFT_RESET ;
 scalar_t__ S_0086D8_CP_ME_HALT (int) ;
 scalar_t__ S_0086D8_CP_PFP_HALT (int) ;
 scalar_t__ VGA_COHE_SPEC_TIMER_DIS ;
 int WREG32 (int ,scalar_t__) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int mdelay (int) ;
 int pci_clear_master (int ) ;
 scalar_t__ r600_mc_wait_for_idle (struct radeon_device*) ;
 int radeon_pci_config_reset (struct radeon_device*) ;
 int rv515_mc_stop (struct radeon_device*,struct rv515_mc_save*) ;
 int rv770_set_clk_bypass_mode (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static void r600_gpu_pci_config_reset(struct radeon_device *rdev)
{
 struct rv515_mc_save save;
 u32 tmp, i;

 dev_info(rdev->dev, "GPU pci config reset\n");




 if (rdev->family >= CHIP_RV770)
  WREG32(R_0086D8_CP_ME_CNTL, S_0086D8_CP_ME_HALT(1) | S_0086D8_CP_PFP_HALT(1));
 else
  WREG32(R_0086D8_CP_ME_CNTL, S_0086D8_CP_ME_HALT(1));


 WREG32(RLC_CNTL, 0);


 tmp = RREG32(DMA_RB_CNTL);
 tmp &= ~DMA_RB_ENABLE;
 WREG32(DMA_RB_CNTL, tmp);

 mdelay(50);


 if (rdev->family >= CHIP_RV770)
  rv770_set_clk_bypass_mode(rdev);

 pci_clear_master(rdev->pdev);

 rv515_mc_stop(rdev, &save);
 if (r600_mc_wait_for_idle(rdev)) {
  dev_warn(rdev->dev, "Wait for MC idle timedout !\n");
 }


 tmp = RREG32(BUS_CNTL);
 tmp |= VGA_COHE_SPEC_TIMER_DIS;
 WREG32(BUS_CNTL, tmp);

 tmp = RREG32(BIF_SCRATCH0);


 radeon_pci_config_reset(rdev);
 mdelay(1);


 tmp = SOFT_RESET_BIF;
 WREG32(SRBM_SOFT_RESET, tmp);
 mdelay(1);
 WREG32(SRBM_SOFT_RESET, 0);


 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(CONFIG_MEMSIZE) != 0xffffffff)
   break;
  udelay(1);
 }
}
