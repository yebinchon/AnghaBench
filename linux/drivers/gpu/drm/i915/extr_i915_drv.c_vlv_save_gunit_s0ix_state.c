
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlv_s0ix_state {void* clock_gate_dis2; void* pcbr; void* gu_ctl1; void* gu_ctl0; void* pmwgicz; void* gtlc_survive; void* gtlc_wake_ctrl; void* gt_fifoctl; void* tilectl; void** gt_scratch; void* pm_ier; void* pm_imr; void* gt_ier; void* gt_imr; void* spare2gh; void* rcedata; void* rcubmabdtmr; void* rp_deucsw; void* rp_down_timeout; void* pwrdwnupctl; void* ecobus; void* rpdeuc; void* rpdeuhwtc; void* gfxpause; void* misccpctl; void* rstctl; void* rcgctl2; void* rcgctl1; void* ucgctl3; void* ucgctl1; void* mbctl; void* gsckgctl; void* g3dctl; void* tlb_rd_addr; void* blt_hwsp; void* bsd_hwsp; void* ecochk; void* render_hwsp; void* gfx_max_req_count; void* media_max_req_count; void** lra_limits; void* gfx_pend_tlb1; void* gfx_pend_tlb0; void* arb_mode; void* gfx_prio_ctrl; void* wr_watermark; } ;
struct drm_i915_private {struct vlv_s0ix_state* vlv_s0ix_state; } ;


 int ARB_MODE ;
 int ARRAY_SIZE (void**) ;
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
 void* I915_READ (int ) ;
 int RENDER_HWS_PGA_GEN7 ;
 int TILECTL ;
 int VLV_G3DCTL ;
 int VLV_GSCKGCTL ;
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

__attribute__((used)) static void vlv_save_gunit_s0ix_state(struct drm_i915_private *dev_priv)
{
 struct vlv_s0ix_state *s = dev_priv->vlv_s0ix_state;
 int i;

 if (!s)
  return;


 s->wr_watermark = I915_READ(GEN7_WR_WATERMARK);
 s->gfx_prio_ctrl = I915_READ(GEN7_GFX_PRIO_CTRL);
 s->arb_mode = I915_READ(ARB_MODE);
 s->gfx_pend_tlb0 = I915_READ(GEN7_GFX_PEND_TLB0);
 s->gfx_pend_tlb1 = I915_READ(GEN7_GFX_PEND_TLB1);

 for (i = 0; i < ARRAY_SIZE(s->lra_limits); i++)
  s->lra_limits[i] = I915_READ(GEN7_LRA_LIMITS(i));

 s->media_max_req_count = I915_READ(GEN7_MEDIA_MAX_REQ_COUNT);
 s->gfx_max_req_count = I915_READ(GEN7_GFX_MAX_REQ_COUNT);

 s->render_hwsp = I915_READ(RENDER_HWS_PGA_GEN7);
 s->ecochk = I915_READ(GAM_ECOCHK);
 s->bsd_hwsp = I915_READ(BSD_HWS_PGA_GEN7);
 s->blt_hwsp = I915_READ(BLT_HWS_PGA_GEN7);

 s->tlb_rd_addr = I915_READ(GEN7_TLB_RD_ADDR);


 s->g3dctl = I915_READ(VLV_G3DCTL);
 s->gsckgctl = I915_READ(VLV_GSCKGCTL);
 s->mbctl = I915_READ(GEN6_MBCTL);


 s->ucgctl1 = I915_READ(GEN6_UCGCTL1);
 s->ucgctl3 = I915_READ(GEN6_UCGCTL3);
 s->rcgctl1 = I915_READ(GEN6_RCGCTL1);
 s->rcgctl2 = I915_READ(GEN6_RCGCTL2);
 s->rstctl = I915_READ(GEN6_RSTCTL);
 s->misccpctl = I915_READ(GEN7_MISCCPCTL);


 s->gfxpause = I915_READ(GEN6_GFXPAUSE);
 s->rpdeuhwtc = I915_READ(GEN6_RPDEUHWTC);
 s->rpdeuc = I915_READ(GEN6_RPDEUC);
 s->ecobus = I915_READ(ECOBUS);
 s->pwrdwnupctl = I915_READ(VLV_PWRDWNUPCTL);
 s->rp_down_timeout = I915_READ(GEN6_RP_DOWN_TIMEOUT);
 s->rp_deucsw = I915_READ(GEN6_RPDEUCSW);
 s->rcubmabdtmr = I915_READ(GEN6_RCUBMABDTMR);
 s->rcedata = I915_READ(VLV_RCEDATA);
 s->spare2gh = I915_READ(VLV_SPAREG2H);


 s->gt_imr = I915_READ(GTIMR);
 s->gt_ier = I915_READ(GTIER);
 s->pm_imr = I915_READ(GEN6_PMIMR);
 s->pm_ier = I915_READ(GEN6_PMIER);

 for (i = 0; i < ARRAY_SIZE(s->gt_scratch); i++)
  s->gt_scratch[i] = I915_READ(GEN7_GT_SCRATCH(i));


 s->tilectl = I915_READ(TILECTL);
 s->gt_fifoctl = I915_READ(GTFIFOCTL);
 s->gtlc_wake_ctrl = I915_READ(VLV_GTLC_WAKE_CTRL);
 s->gtlc_survive = I915_READ(VLV_GTLC_SURVIVABILITY_REG);
 s->pmwgicz = I915_READ(VLV_PMWGICZ);


 s->gu_ctl0 = I915_READ(VLV_GU_CTL0);
 s->gu_ctl1 = I915_READ(VLV_GU_CTL1);
 s->pcbr = I915_READ(VLV_PCBR);
 s->clock_gate_dis2 = I915_READ(VLV_GUNIT_CLOCK_GATE2);
}
