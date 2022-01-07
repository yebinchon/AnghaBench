
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int flags; scalar_t__ usec_timeout; int pdev; int dev; } ;
struct kv_reset_save_regs {int member_0; } ;
struct evergreen_mc_save {int dummy; } ;


 scalar_t__ CONFIG_MEMSIZE ;
 scalar_t__ CP_CE_HALT ;
 scalar_t__ CP_MEC_CNTL ;
 scalar_t__ CP_ME_CNTL ;
 scalar_t__ CP_ME_HALT ;
 scalar_t__ CP_PFP_HALT ;
 scalar_t__ MEC_ME1_HALT ;
 scalar_t__ MEC_ME2_HALT ;
 int RADEON_IS_IGP ;
 int RREG32 (scalar_t__) ;
 scalar_t__ SDMA0_ME_CNTL ;
 scalar_t__ SDMA0_REGISTER_OFFSET ;
 scalar_t__ SDMA1_REGISTER_OFFSET ;
 scalar_t__ SDMA_HALT ;
 int WREG32 (scalar_t__,scalar_t__) ;
 int cik_fini_cg (struct radeon_device*) ;
 int cik_fini_pg (struct radeon_device*) ;
 int cik_rlc_stop (struct radeon_device*) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int evergreen_mc_stop (struct radeon_device*,struct evergreen_mc_save*) ;
 scalar_t__ evergreen_mc_wait_for_idle (struct radeon_device*) ;
 int kv_restore_regs_for_reset (struct radeon_device*,struct kv_reset_save_regs*) ;
 int kv_save_regs_for_reset (struct radeon_device*,struct kv_reset_save_regs*) ;
 int pci_clear_master (int ) ;
 int radeon_pci_config_reset (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static void cik_gpu_pci_config_reset(struct radeon_device *rdev)
{
 struct evergreen_mc_save save;
 struct kv_reset_save_regs kv_save = { 0 };
 u32 tmp, i;

 dev_info(rdev->dev, "GPU pci config reset\n");




 cik_fini_pg(rdev);
 cik_fini_cg(rdev);


 WREG32(CP_ME_CNTL, CP_ME_HALT | CP_PFP_HALT | CP_CE_HALT);


 WREG32(CP_MEC_CNTL, MEC_ME1_HALT | MEC_ME2_HALT);


 tmp = RREG32(SDMA0_ME_CNTL + SDMA0_REGISTER_OFFSET);
 tmp |= SDMA_HALT;
 WREG32(SDMA0_ME_CNTL + SDMA0_REGISTER_OFFSET, tmp);

 tmp = RREG32(SDMA0_ME_CNTL + SDMA1_REGISTER_OFFSET);
 tmp |= SDMA_HALT;
 WREG32(SDMA0_ME_CNTL + SDMA1_REGISTER_OFFSET, tmp);



 cik_rlc_stop(rdev);

 udelay(50);


 evergreen_mc_stop(rdev, &save);
 if (evergreen_mc_wait_for_idle(rdev)) {
  dev_warn(rdev->dev, "Wait for MC idle timed out !\n");
 }

 if (rdev->flags & RADEON_IS_IGP)
  kv_save_regs_for_reset(rdev, &kv_save);


 pci_clear_master(rdev->pdev);

 radeon_pci_config_reset(rdev);

 udelay(100);


 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(CONFIG_MEMSIZE) != 0xffffffff)
   break;
  udelay(1);
 }


 if (rdev->flags & RADEON_IS_IGP)
  kv_restore_regs_for_reset(rdev, &kv_save);
}
