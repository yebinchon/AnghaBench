
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int flags; int dev; } ;
struct evergreen_mc_save {int dummy; } ;


 int CP_ME_CNTL ;
 int CP_ME_HALT ;
 int CP_PFP_HALT ;
 int DMA0_REGISTER_OFFSET ;
 int DMA1_REGISTER_OFFSET ;
 int DMA_RB_CNTL ;
 int DMA_RB_ENABLE ;
 int GRBM_SOFT_RESET ;
 int RADEON_IS_IGP ;
 int RADEON_RESET_COMPUTE ;
 int RADEON_RESET_CP ;
 int RADEON_RESET_DISPLAY ;
 int RADEON_RESET_DMA ;
 int RADEON_RESET_DMA1 ;
 int RADEON_RESET_GFX ;
 int RADEON_RESET_GRBM ;
 int RADEON_RESET_IH ;
 int RADEON_RESET_MC ;
 int RADEON_RESET_RLC ;
 int RADEON_RESET_SEM ;
 int RADEON_RESET_VMC ;
 int RREG32 (int) ;
 int SOFT_RESET_CB ;
 int SOFT_RESET_CP ;
 int SOFT_RESET_DB ;
 int SOFT_RESET_DC ;
 int SOFT_RESET_DMA ;
 int SOFT_RESET_DMA1 ;
 int SOFT_RESET_GDS ;
 int SOFT_RESET_GRBM ;
 int SOFT_RESET_IA ;
 int SOFT_RESET_IH ;
 int SOFT_RESET_MC ;
 int SOFT_RESET_PA ;
 int SOFT_RESET_RLC ;
 int SOFT_RESET_SC ;
 int SOFT_RESET_SEM ;
 int SOFT_RESET_SH ;
 int SOFT_RESET_SPI ;
 int SOFT_RESET_SX ;
 int SOFT_RESET_TA ;
 int SOFT_RESET_TC ;
 int SOFT_RESET_VGT ;
 int SOFT_RESET_VMC ;
 int SRBM_SOFT_RESET ;
 int WREG32 (int,int) ;
 int dev_info (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int evergreen_mc_resume (struct radeon_device*,struct evergreen_mc_save*) ;
 int evergreen_mc_stop (struct radeon_device*,struct evergreen_mc_save*) ;
 scalar_t__ evergreen_mc_wait_for_idle (struct radeon_device*) ;
 int evergreen_print_gpu_status_regs (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static void cayman_gpu_soft_reset(struct radeon_device *rdev, u32 reset_mask)
{
 struct evergreen_mc_save save;
 u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
 u32 tmp;

 if (reset_mask == 0)
  return;

 dev_info(rdev->dev, "GPU softreset: 0x%08X\n", reset_mask);

 evergreen_print_gpu_status_regs(rdev);
 dev_info(rdev->dev, "  VM_CONTEXT0_PROTECTION_FAULT_ADDR   0x%08X\n",
   RREG32(0x14F8));
 dev_info(rdev->dev, "  VM_CONTEXT0_PROTECTION_FAULT_STATUS 0x%08X\n",
   RREG32(0x14D8));
 dev_info(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
   RREG32(0x14FC));
 dev_info(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
   RREG32(0x14DC));


 WREG32(CP_ME_CNTL, CP_ME_HALT | CP_PFP_HALT);

 if (reset_mask & RADEON_RESET_DMA) {

  tmp = RREG32(DMA_RB_CNTL + DMA0_REGISTER_OFFSET);
  tmp &= ~DMA_RB_ENABLE;
  WREG32(DMA_RB_CNTL + DMA0_REGISTER_OFFSET, tmp);
 }

 if (reset_mask & RADEON_RESET_DMA1) {

  tmp = RREG32(DMA_RB_CNTL + DMA1_REGISTER_OFFSET);
  tmp &= ~DMA_RB_ENABLE;
  WREG32(DMA_RB_CNTL + DMA1_REGISTER_OFFSET, tmp);
 }

 udelay(50);

 evergreen_mc_stop(rdev, &save);
 if (evergreen_mc_wait_for_idle(rdev)) {
  dev_warn(rdev->dev, "Wait for MC idle timedout !\n");
 }

 if (reset_mask & (RADEON_RESET_GFX | RADEON_RESET_COMPUTE)) {
  grbm_soft_reset = SOFT_RESET_CB |
   SOFT_RESET_DB |
   SOFT_RESET_GDS |
   SOFT_RESET_PA |
   SOFT_RESET_SC |
   SOFT_RESET_SPI |
   SOFT_RESET_SH |
   SOFT_RESET_SX |
   SOFT_RESET_TC |
   SOFT_RESET_TA |
   SOFT_RESET_VGT |
   SOFT_RESET_IA;
 }

 if (reset_mask & RADEON_RESET_CP) {
  grbm_soft_reset |= SOFT_RESET_CP | SOFT_RESET_VGT;

  srbm_soft_reset |= SOFT_RESET_GRBM;
 }

 if (reset_mask & RADEON_RESET_DMA)
  srbm_soft_reset |= SOFT_RESET_DMA;

 if (reset_mask & RADEON_RESET_DMA1)
  srbm_soft_reset |= SOFT_RESET_DMA1;

 if (reset_mask & RADEON_RESET_DISPLAY)
  srbm_soft_reset |= SOFT_RESET_DC;

 if (reset_mask & RADEON_RESET_RLC)
  srbm_soft_reset |= SOFT_RESET_RLC;

 if (reset_mask & RADEON_RESET_SEM)
  srbm_soft_reset |= SOFT_RESET_SEM;

 if (reset_mask & RADEON_RESET_IH)
  srbm_soft_reset |= SOFT_RESET_IH;

 if (reset_mask & RADEON_RESET_GRBM)
  srbm_soft_reset |= SOFT_RESET_GRBM;

 if (reset_mask & RADEON_RESET_VMC)
  srbm_soft_reset |= SOFT_RESET_VMC;

 if (!(rdev->flags & RADEON_IS_IGP)) {
  if (reset_mask & RADEON_RESET_MC)
   srbm_soft_reset |= SOFT_RESET_MC;
 }

 if (grbm_soft_reset) {
  tmp = RREG32(GRBM_SOFT_RESET);
  tmp |= grbm_soft_reset;
  dev_info(rdev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
  WREG32(GRBM_SOFT_RESET, tmp);
  tmp = RREG32(GRBM_SOFT_RESET);

  udelay(50);

  tmp &= ~grbm_soft_reset;
  WREG32(GRBM_SOFT_RESET, tmp);
  tmp = RREG32(GRBM_SOFT_RESET);
 }

 if (srbm_soft_reset) {
  tmp = RREG32(SRBM_SOFT_RESET);
  tmp |= srbm_soft_reset;
  dev_info(rdev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
  WREG32(SRBM_SOFT_RESET, tmp);
  tmp = RREG32(SRBM_SOFT_RESET);

  udelay(50);

  tmp &= ~srbm_soft_reset;
  WREG32(SRBM_SOFT_RESET, tmp);
  tmp = RREG32(SRBM_SOFT_RESET);
 }


 udelay(50);

 evergreen_mc_resume(rdev, &save);
 udelay(50);

 evergreen_print_gpu_status_regs(rdev);
}
