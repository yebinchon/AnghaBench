
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vlv_s0ix_state {int wr_watermark; int gfx_prio_ctrl; int arb_mode; int gfx_pend_tlb0; int gfx_pend_tlb1; int* lra_limits; int media_max_req_count; int gfx_max_req_count; int render_hwsp; int ecochk; int bsd_hwsp; int blt_hwsp; int tlb_rd_addr; int g3dctl; int gsckgctl; int mbctl; int ucgctl1; int ucgctl3; int rcgctl1; int rcgctl2; int rstctl; int misccpctl; int gfxpause; int rpdeuhwtc; int rpdeuc; int ecobus; int pwrdwnupctl; int rp_down_timeout; int rp_deucsw; int rcubmabdtmr; int rcedata; int spare2gh; int gt_imr; int gt_ier; int pm_imr; int pm_ier; int* gt_scratch; int tilectl; int gt_fifoctl; int gtlc_wake_ctrl; int gtlc_survive; int pmwgicz; int gu_ctl0; int gu_ctl1; int pcbr; int clock_gate_dis2; } ;
struct drm_i915_private {struct vlv_s0ix_state* vlv_s0ix_state; } ;


 int ARB_MODE ;
 int ARRAY_SIZE (int*) ;
 int BLT_HWS_PGA_GEN7 ;
 int BSD_HWS_PGA_GEN7 ;
 int ECOBUS ;
 int GAM_ECOCHK ;
 int GEN6_GFXPAUSE ;
 int GEN6_MBCTL ;
 int GEN6_PMIER ;
 int GEN6_PMIMR ;
 int GEN6_RCGCTL1 ;
 int GEN6_RCGCTL2 ;
 int GEN6_RCUBMABDTMR ;
 int GEN6_RPDEUC ;
 int GEN6_RPDEUCSW ;
 int GEN6_RPDEUHWTC ;
 int GEN6_RP_DOWN_TIMEOUT ;
 int GEN6_RSTCTL ;
 int GEN6_UCGCTL1 ;
 int GEN6_UCGCTL3 ;
 int GEN7_GFX_MAX_REQ_COUNT ;
 int GEN7_GFX_PEND_TLB0 ;
 int GEN7_GFX_PEND_TLB1 ;
 int GEN7_GFX_PRIO_CTRL ;
 int GEN7_GT_SCRATCH (int) ;
 int GEN7_LRA_LIMITS (int) ;
 int GEN7_MEDIA_MAX_REQ_COUNT ;
 int GEN7_MISCCPCTL ;
 int GEN7_TLB_RD_ADDR ;
 int GEN7_WR_WATERMARK ;
 int GTFIFOCTL ;
 int GTIER ;
 int GTIMR ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int RENDER_HWS_PGA_GEN7 ;
 int TILECTL ;
 int VLV_G3DCTL ;
 int VLV_GFX_CLK_FORCE_ON_BIT ;
 int VLV_GSCKGCTL ;
 int VLV_GTLC_ALLOWWAKEREQ ;
 int VLV_GTLC_SURVIVABILITY_REG ;
 int VLV_GTLC_WAKE_CTRL ;
 int VLV_GUNIT_CLOCK_GATE2 ;
 int VLV_GU_CTL0 ;
 int VLV_GU_CTL1 ;
 int VLV_PCBR ;
 int VLV_PMWGICZ ;
 int VLV_PWRDWNUPCTL ;
 int VLV_RCEDATA ;
 int VLV_SPAREG2H ;

__attribute__((used)) static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *dev_priv)
{
 struct vlv_s0ix_state *s = dev_priv->vlv_s0ix_state;
 u32 val;
 int i;

 if (!s)
  return;


 I915_WRITE(GEN7_WR_WATERMARK, s->wr_watermark);
 I915_WRITE(GEN7_GFX_PRIO_CTRL, s->gfx_prio_ctrl);
 I915_WRITE(ARB_MODE, s->arb_mode | (0xffff << 16));
 I915_WRITE(GEN7_GFX_PEND_TLB0, s->gfx_pend_tlb0);
 I915_WRITE(GEN7_GFX_PEND_TLB1, s->gfx_pend_tlb1);

 for (i = 0; i < ARRAY_SIZE(s->lra_limits); i++)
  I915_WRITE(GEN7_LRA_LIMITS(i), s->lra_limits[i]);

 I915_WRITE(GEN7_MEDIA_MAX_REQ_COUNT, s->media_max_req_count);
 I915_WRITE(GEN7_GFX_MAX_REQ_COUNT, s->gfx_max_req_count);

 I915_WRITE(RENDER_HWS_PGA_GEN7, s->render_hwsp);
 I915_WRITE(GAM_ECOCHK, s->ecochk);
 I915_WRITE(BSD_HWS_PGA_GEN7, s->bsd_hwsp);
 I915_WRITE(BLT_HWS_PGA_GEN7, s->blt_hwsp);

 I915_WRITE(GEN7_TLB_RD_ADDR, s->tlb_rd_addr);


 I915_WRITE(VLV_G3DCTL, s->g3dctl);
 I915_WRITE(VLV_GSCKGCTL, s->gsckgctl);
 I915_WRITE(GEN6_MBCTL, s->mbctl);


 I915_WRITE(GEN6_UCGCTL1, s->ucgctl1);
 I915_WRITE(GEN6_UCGCTL3, s->ucgctl3);
 I915_WRITE(GEN6_RCGCTL1, s->rcgctl1);
 I915_WRITE(GEN6_RCGCTL2, s->rcgctl2);
 I915_WRITE(GEN6_RSTCTL, s->rstctl);
 I915_WRITE(GEN7_MISCCPCTL, s->misccpctl);


 I915_WRITE(GEN6_GFXPAUSE, s->gfxpause);
 I915_WRITE(GEN6_RPDEUHWTC, s->rpdeuhwtc);
 I915_WRITE(GEN6_RPDEUC, s->rpdeuc);
 I915_WRITE(ECOBUS, s->ecobus);
 I915_WRITE(VLV_PWRDWNUPCTL, s->pwrdwnupctl);
 I915_WRITE(GEN6_RP_DOWN_TIMEOUT,s->rp_down_timeout);
 I915_WRITE(GEN6_RPDEUCSW, s->rp_deucsw);
 I915_WRITE(GEN6_RCUBMABDTMR, s->rcubmabdtmr);
 I915_WRITE(VLV_RCEDATA, s->rcedata);
 I915_WRITE(VLV_SPAREG2H, s->spare2gh);


 I915_WRITE(GTIMR, s->gt_imr);
 I915_WRITE(GTIER, s->gt_ier);
 I915_WRITE(GEN6_PMIMR, s->pm_imr);
 I915_WRITE(GEN6_PMIER, s->pm_ier);

 for (i = 0; i < ARRAY_SIZE(s->gt_scratch); i++)
  I915_WRITE(GEN7_GT_SCRATCH(i), s->gt_scratch[i]);


 I915_WRITE(TILECTL, s->tilectl);
 I915_WRITE(GTFIFOCTL, s->gt_fifoctl);





 val = I915_READ(VLV_GTLC_WAKE_CTRL);
 val &= VLV_GTLC_ALLOWWAKEREQ;
 val |= s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ;
 I915_WRITE(VLV_GTLC_WAKE_CTRL, val);

 val = I915_READ(VLV_GTLC_SURVIVABILITY_REG);
 val &= VLV_GFX_CLK_FORCE_ON_BIT;
 val |= s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT;
 I915_WRITE(VLV_GTLC_SURVIVABILITY_REG, val);

 I915_WRITE(VLV_PMWGICZ, s->pmwgicz);


 I915_WRITE(VLV_GU_CTL0, s->gu_ctl0);
 I915_WRITE(VLV_GU_CTL1, s->gu_ctl1);
 I915_WRITE(VLV_PCBR, s->pcbr);
 I915_WRITE(VLV_GUNIT_CLOCK_GATE2, s->clock_gate_dis2);
}
