
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mclk; } ;
struct rv7xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {scalar_t__ family; int num_crtc; int usec_timeout; } ;


 int CG_SEQ_REQ (int) ;
 int CG_SEQ_REQ_MASK ;
 scalar_t__ CHIP_CYPRESS ;
 scalar_t__ CHIP_HEMLOCK ;
 int MC_CG_CONFIG ;
 int MC_CG_CONFIG_MCD ;
 int MC_CG_SEQ_DRAMCONF_S1 ;
 int MC_CG_SEQ_YCLK_RESUME ;
 int MC_CG_SEQ_YCLK_SUSPEND ;
 int MC_CONFIG ;
 int MC_CONFIG_MCD ;
 int MC_SEQ_CG ;
 int MC_SEQ_STATUS_M ;
 int PMG_PWRSTATE ;
 int RREG32 (int ) ;
 int SEQ_CG_RESP (int) ;
 int WREG32 (int ,int) ;
 int cypress_get_strobe_mode_settings (struct radeon_device*,int ) ;
 int cypress_wait_for_mc_sequencer (struct radeon_device*,int) ;
 int radeon_atom_set_ac_timing (struct radeon_device*,int ) ;
 int radeon_mc_wait_for_idle (struct radeon_device*) ;
 int radeon_wait_for_vblank (struct radeon_device*,int) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;
 int udelay (int) ;

__attribute__((used)) static void cypress_force_mc_use_s1(struct radeon_device *rdev,
        struct radeon_ps *radeon_boot_state)
{
 struct rv7xx_ps *boot_state = rv770_get_ps(radeon_boot_state);
 u32 strobe_mode;
 u32 mc_seq_cg;
 int i;

 if (RREG32(MC_SEQ_STATUS_M) & PMG_PWRSTATE)
  return;

 radeon_atom_set_ac_timing(rdev, boot_state->low.mclk);
 radeon_mc_wait_for_idle(rdev);

 if ((rdev->family == CHIP_CYPRESS) ||
     (rdev->family == CHIP_HEMLOCK)) {
  WREG32(MC_CONFIG_MCD, 0xf);
  WREG32(MC_CG_CONFIG_MCD, 0xf);
 } else {
  WREG32(MC_CONFIG, 0xf);
  WREG32(MC_CG_CONFIG, 0xf);
 }

 for (i = 0; i < rdev->num_crtc; i++)
  radeon_wait_for_vblank(rdev, i);

 WREG32(MC_SEQ_CG, MC_CG_SEQ_YCLK_SUSPEND);
 cypress_wait_for_mc_sequencer(rdev, MC_CG_SEQ_YCLK_SUSPEND);

 strobe_mode = cypress_get_strobe_mode_settings(rdev,
             boot_state->low.mclk);

 mc_seq_cg = CG_SEQ_REQ(MC_CG_SEQ_DRAMCONF_S1);
 mc_seq_cg |= SEQ_CG_RESP(strobe_mode);
 WREG32(MC_SEQ_CG, mc_seq_cg);

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(MC_SEQ_STATUS_M) & PMG_PWRSTATE)
   break;
  udelay(1);
 }

 mc_seq_cg &= ~CG_SEQ_REQ_MASK;
 mc_seq_cg |= CG_SEQ_REQ(MC_CG_SEQ_YCLK_RESUME);
 WREG32(MC_SEQ_CG, mc_seq_cg);

 cypress_wait_for_mc_sequencer(rdev, MC_CG_SEQ_YCLK_RESUME);
}
