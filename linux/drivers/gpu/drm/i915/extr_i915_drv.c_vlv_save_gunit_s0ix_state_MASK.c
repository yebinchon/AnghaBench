#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlv_s0ix_state {void* clock_gate_dis2; void* pcbr; void* gu_ctl1; void* gu_ctl0; void* pmwgicz; void* gtlc_survive; void* gtlc_wake_ctrl; void* gt_fifoctl; void* tilectl; void** gt_scratch; void* pm_ier; void* pm_imr; void* gt_ier; void* gt_imr; void* spare2gh; void* rcedata; void* rcubmabdtmr; void* rp_deucsw; void* rp_down_timeout; void* pwrdwnupctl; void* ecobus; void* rpdeuc; void* rpdeuhwtc; void* gfxpause; void* misccpctl; void* rstctl; void* rcgctl2; void* rcgctl1; void* ucgctl3; void* ucgctl1; void* mbctl; void* gsckgctl; void* g3dctl; void* tlb_rd_addr; void* blt_hwsp; void* bsd_hwsp; void* ecochk; void* render_hwsp; void* gfx_max_req_count; void* media_max_req_count; void** lra_limits; void* gfx_pend_tlb1; void* gfx_pend_tlb0; void* arb_mode; void* gfx_prio_ctrl; void* wr_watermark; } ;
struct drm_i915_private {struct vlv_s0ix_state* vlv_s0ix_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_MODE ; 
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  BLT_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  BSD_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  ECOBUS ; 
 int /*<<< orphan*/  GAM_ECOCHK ; 
 int /*<<< orphan*/  GEN6_GFXPAUSE ; 
 int /*<<< orphan*/  GEN6_MBCTL ; 
 int /*<<< orphan*/  GEN6_PMIER ; 
 int /*<<< orphan*/  GEN6_PMIMR ; 
 int /*<<< orphan*/  GEN6_RCGCTL1 ; 
 int /*<<< orphan*/  GEN6_RCGCTL2 ; 
 int /*<<< orphan*/  GEN6_RCUBMABDTMR ; 
 int /*<<< orphan*/  GEN6_RPDEUC ; 
 int /*<<< orphan*/  GEN6_RPDEUCSW ; 
 int /*<<< orphan*/  GEN6_RPDEUHWTC ; 
 int /*<<< orphan*/  GEN6_RP_DOWN_TIMEOUT ; 
 int /*<<< orphan*/  GEN6_RSTCTL ; 
 int /*<<< orphan*/  GEN6_UCGCTL1 ; 
 int /*<<< orphan*/  GEN6_UCGCTL3 ; 
 int /*<<< orphan*/  GEN7_GFX_MAX_REQ_COUNT ; 
 int /*<<< orphan*/  GEN7_GFX_PEND_TLB0 ; 
 int /*<<< orphan*/  GEN7_GFX_PEND_TLB1 ; 
 int /*<<< orphan*/  GEN7_GFX_PRIO_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GEN7_MEDIA_MAX_REQ_COUNT ; 
 int /*<<< orphan*/  GEN7_MISCCPCTL ; 
 int /*<<< orphan*/  GEN7_TLB_RD_ADDR ; 
 int /*<<< orphan*/  GEN7_WR_WATERMARK ; 
 int /*<<< orphan*/  GTFIFOCTL ; 
 int /*<<< orphan*/  GTIER ; 
 int /*<<< orphan*/  GTIMR ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RENDER_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  TILECTL ; 
 int /*<<< orphan*/  VLV_G3DCTL ; 
 int /*<<< orphan*/  VLV_GSCKGCTL ; 
 int /*<<< orphan*/  VLV_GTLC_SURVIVABILITY_REG ; 
 int /*<<< orphan*/  VLV_GTLC_WAKE_CTRL ; 
 int /*<<< orphan*/  VLV_GUNIT_CLOCK_GATE2 ; 
 int /*<<< orphan*/  VLV_GU_CTL0 ; 
 int /*<<< orphan*/  VLV_GU_CTL1 ; 
 int /*<<< orphan*/  VLV_PCBR ; 
 int /*<<< orphan*/  VLV_PMWGICZ ; 
 int /*<<< orphan*/  VLV_PWRDWNUPCTL ; 
 int /*<<< orphan*/  VLV_RCEDATA ; 
 int /*<<< orphan*/  VLV_SPAREG2H ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	struct vlv_s0ix_state *s = dev_priv->vlv_s0ix_state;
	int i;

	if (!s)
		return;

	/* GAM 0x4000-0x4770 */
	s->wr_watermark		= FUNC3(GEN7_WR_WATERMARK);
	s->gfx_prio_ctrl	= FUNC3(GEN7_GFX_PRIO_CTRL);
	s->arb_mode		= FUNC3(ARB_MODE);
	s->gfx_pend_tlb0	= FUNC3(GEN7_GFX_PEND_TLB0);
	s->gfx_pend_tlb1	= FUNC3(GEN7_GFX_PEND_TLB1);

	for (i = 0; i < FUNC0(s->lra_limits); i++)
		s->lra_limits[i] = FUNC3(FUNC2(i));

	s->media_max_req_count	= FUNC3(GEN7_MEDIA_MAX_REQ_COUNT);
	s->gfx_max_req_count	= FUNC3(GEN7_GFX_MAX_REQ_COUNT);

	s->render_hwsp		= FUNC3(RENDER_HWS_PGA_GEN7);
	s->ecochk		= FUNC3(GAM_ECOCHK);
	s->bsd_hwsp		= FUNC3(BSD_HWS_PGA_GEN7);
	s->blt_hwsp		= FUNC3(BLT_HWS_PGA_GEN7);

	s->tlb_rd_addr		= FUNC3(GEN7_TLB_RD_ADDR);

	/* MBC 0x9024-0x91D0, 0x8500 */
	s->g3dctl		= FUNC3(VLV_G3DCTL);
	s->gsckgctl		= FUNC3(VLV_GSCKGCTL);
	s->mbctl		= FUNC3(GEN6_MBCTL);

	/* GCP 0x9400-0x9424, 0x8100-0x810C */
	s->ucgctl1		= FUNC3(GEN6_UCGCTL1);
	s->ucgctl3		= FUNC3(GEN6_UCGCTL3);
	s->rcgctl1		= FUNC3(GEN6_RCGCTL1);
	s->rcgctl2		= FUNC3(GEN6_RCGCTL2);
	s->rstctl		= FUNC3(GEN6_RSTCTL);
	s->misccpctl		= FUNC3(GEN7_MISCCPCTL);

	/* GPM 0xA000-0xAA84, 0x8000-0x80FC */
	s->gfxpause		= FUNC3(GEN6_GFXPAUSE);
	s->rpdeuhwtc		= FUNC3(GEN6_RPDEUHWTC);
	s->rpdeuc		= FUNC3(GEN6_RPDEUC);
	s->ecobus		= FUNC3(ECOBUS);
	s->pwrdwnupctl		= FUNC3(VLV_PWRDWNUPCTL);
	s->rp_down_timeout	= FUNC3(GEN6_RP_DOWN_TIMEOUT);
	s->rp_deucsw		= FUNC3(GEN6_RPDEUCSW);
	s->rcubmabdtmr		= FUNC3(GEN6_RCUBMABDTMR);
	s->rcedata		= FUNC3(VLV_RCEDATA);
	s->spare2gh		= FUNC3(VLV_SPAREG2H);

	/* Display CZ domain, 0x4400C-0x4402C, 0x4F000-0x4F11F */
	s->gt_imr		= FUNC3(GTIMR);
	s->gt_ier		= FUNC3(GTIER);
	s->pm_imr		= FUNC3(GEN6_PMIMR);
	s->pm_ier		= FUNC3(GEN6_PMIER);

	for (i = 0; i < FUNC0(s->gt_scratch); i++)
		s->gt_scratch[i] = FUNC3(FUNC1(i));

	/* GT SA CZ domain, 0x100000-0x138124 */
	s->tilectl		= FUNC3(TILECTL);
	s->gt_fifoctl		= FUNC3(GTFIFOCTL);
	s->gtlc_wake_ctrl	= FUNC3(VLV_GTLC_WAKE_CTRL);
	s->gtlc_survive		= FUNC3(VLV_GTLC_SURVIVABILITY_REG);
	s->pmwgicz		= FUNC3(VLV_PMWGICZ);

	/* Gunit-Display CZ domain, 0x182028-0x1821CF */
	s->gu_ctl0		= FUNC3(VLV_GU_CTL0);
	s->gu_ctl1		= FUNC3(VLV_GU_CTL1);
	s->pcbr			= FUNC3(VLV_PCBR);
	s->clock_gate_dis2	= FUNC3(VLV_GUNIT_CLOCK_GATE2);

	/*
	 * Not saving any of:
	 * DFT,		0x9800-0x9EC0
	 * SARB,	0xB000-0xB1FC
	 * GAC,		0x5208-0x524C, 0x14000-0x14C000
	 * PCI CFG
	 */
}