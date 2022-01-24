#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {void* savePWM_CONTROL_LOGIC; void* saveHISTOGRAM_LOGIC_CONTROL_REG; void* saveHISTOGRAM_INT_CONTROL_REG; void* saveOV_OGAMC5; void* saveOV_OGAMC4; void* saveOV_OGAMC3; void* saveOV_OGAMC2; void* saveOV_OGAMC1; void* saveOV_OGAMC0; void* saveOV_OVADD; void* savePP_DIVISOR; void* savePP_OFF_DELAYS; void* savePP_ON_DELAYS; void* savePFIT_CONTROL; void* saveLVDS; void* savePFIT_AUTO_RATIOS; void* savePFIT_PGM_RATIOS; void* savePP_CONTROL; void* savePERF_MODE; void* saveDSPACURSOR_POS; void* saveDSPACURSOR_BASE; void* saveDSPACURSOR_CTRL; void* saveBCLRPAT_A; void* saveCHICKENBIT; void* saveDSPFW6; void* saveDSPFW5; void* saveDSPFW4; void* saveDSPFW3; void* saveDSPFW2; void* saveDSPFW1; void* saveDSPARB; } ;
struct psb_save_area {TYPE_1__ psb; void* saveBLC_PWM_CTL2; void* saveBLC_PWM_CTL; struct psb_pipe* pipe; } ;
struct psb_pipe {void** palette; void* tileoff; void* linoff; void* surf; void* addr; void* stride; void* cntr; void* vsync; void* vblank; void* vtotal; void* hsync; void* hblank; void* htotal; void* dpll; void* fp1; void* fp0; void* src; void* conf; } ;
struct drm_psb_private {scalar_t__ iLVDS_enable; scalar_t__ hdmi_priv; struct psb_save_area regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ BCLRPAT_A ; 
 scalar_t__ BLC_PWM_CTL ; 
 scalar_t__ BLC_PWM_CTL2 ; 
 scalar_t__ CURABASE ; 
 scalar_t__ CURACNTR ; 
 scalar_t__ CURAPOS ; 
 scalar_t__ DSPABASE ; 
 scalar_t__ DSPACNTR ; 
 scalar_t__ DSPALINOFF ; 
 scalar_t__ DSPARB ; 
 scalar_t__ DSPASTRIDE ; 
 scalar_t__ DSPASURF ; 
 scalar_t__ DSPATILEOFF ; 
 scalar_t__ DSPCHICKENBIT ; 
 scalar_t__ DSPFW1 ; 
 scalar_t__ DSPFW2 ; 
 scalar_t__ DSPFW3 ; 
 scalar_t__ DSPFW4 ; 
 scalar_t__ DSPFW5 ; 
 scalar_t__ DSPFW6 ; 
 scalar_t__ HBLANK_A ; 
 scalar_t__ HISTOGRAM_INT_CONTROL ; 
 scalar_t__ HISTOGRAM_LOGIC_CONTROL ; 
 scalar_t__ HSYNC_A ; 
 scalar_t__ HTOTAL_A ; 
 scalar_t__ LVDS ; 
 scalar_t__ LVDSPP_OFF ; 
 scalar_t__ LVDSPP_ON ; 
 scalar_t__ MRST_DPLL_A ; 
 scalar_t__ MRST_FPA0 ; 
 scalar_t__ MRST_FPA1 ; 
 scalar_t__ MRST_PERF_MODE ; 
 scalar_t__ OV_OGAMC0 ; 
 scalar_t__ OV_OGAMC1 ; 
 scalar_t__ OV_OGAMC2 ; 
 scalar_t__ OV_OGAMC3 ; 
 scalar_t__ OV_OGAMC4 ; 
 scalar_t__ OV_OGAMC5 ; 
 scalar_t__ OV_OVADD ; 
 scalar_t__ PALETTE_A ; 
 scalar_t__ PFIT_AUTO_RATIOS ; 
 scalar_t__ PFIT_CONTROL ; 
 scalar_t__ PFIT_PGM_RATIOS ; 
 scalar_t__ PIPEACONF ; 
 scalar_t__ PIPEASRC ; 
 scalar_t__ PP_CONTROL ; 
 scalar_t__ PP_CYCLE ; 
 scalar_t__ PP_STATUS ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ PWM_CONTROL_LOGIC ; 
 scalar_t__ VBLANK_A ; 
 scalar_t__ VSYNC_A ; 
 scalar_t__ VTOTAL_A ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_save_area *regs = &dev_priv->regs;
	struct psb_pipe *p = &regs->pipe[0];
	int i;
	u32 pp_stat;

	/* Display arbitration control + watermarks */
	regs->psb.saveDSPARB = FUNC0(DSPARB);
	regs->psb.saveDSPFW1 = FUNC0(DSPFW1);
	regs->psb.saveDSPFW2 = FUNC0(DSPFW2);
	regs->psb.saveDSPFW3 = FUNC0(DSPFW3);
	regs->psb.saveDSPFW4 = FUNC0(DSPFW4);
	regs->psb.saveDSPFW5 = FUNC0(DSPFW5);
	regs->psb.saveDSPFW6 = FUNC0(DSPFW6);
	regs->psb.saveCHICKENBIT = FUNC0(DSPCHICKENBIT);

	/* Pipe & plane A info */
	p->conf = FUNC0(PIPEACONF);
	p->src = FUNC0(PIPEASRC);
	p->fp0 = FUNC0(MRST_FPA0);
	p->fp1 = FUNC0(MRST_FPA1);
	p->dpll = FUNC0(MRST_DPLL_A);
	p->htotal = FUNC0(HTOTAL_A);
	p->hblank = FUNC0(HBLANK_A);
	p->hsync = FUNC0(HSYNC_A);
	p->vtotal = FUNC0(VTOTAL_A);
	p->vblank = FUNC0(VBLANK_A);
	p->vsync = FUNC0(VSYNC_A);
	regs->psb.saveBCLRPAT_A = FUNC0(BCLRPAT_A);
	p->cntr = FUNC0(DSPACNTR);
	p->stride = FUNC0(DSPASTRIDE);
	p->addr = FUNC0(DSPABASE);
	p->surf = FUNC0(DSPASURF);
	p->linoff = FUNC0(DSPALINOFF);
	p->tileoff = FUNC0(DSPATILEOFF);

	/* Save cursor regs */
	regs->psb.saveDSPACURSOR_CTRL = FUNC0(CURACNTR);
	regs->psb.saveDSPACURSOR_BASE = FUNC0(CURABASE);
	regs->psb.saveDSPACURSOR_POS = FUNC0(CURAPOS);

	/* Save palette (gamma) */
	for (i = 0; i < 256; i++)
		p->palette[i] = FUNC0(PALETTE_A + (i << 2));

	if (dev_priv->hdmi_priv)
		FUNC3(dev);

	/* Save performance state */
	regs->psb.savePERF_MODE = FUNC0(MRST_PERF_MODE);

	/* LVDS state */
	regs->psb.savePP_CONTROL = FUNC0(PP_CONTROL);
	regs->psb.savePFIT_PGM_RATIOS = FUNC0(PFIT_PGM_RATIOS);
	regs->psb.savePFIT_AUTO_RATIOS = FUNC0(PFIT_AUTO_RATIOS);
	regs->saveBLC_PWM_CTL = FUNC0(BLC_PWM_CTL);
	regs->saveBLC_PWM_CTL2 = FUNC0(BLC_PWM_CTL2);
	regs->psb.saveLVDS = FUNC0(LVDS);
	regs->psb.savePFIT_CONTROL = FUNC0(PFIT_CONTROL);
	regs->psb.savePP_ON_DELAYS = FUNC0(LVDSPP_ON);
	regs->psb.savePP_OFF_DELAYS = FUNC0(LVDSPP_OFF);
	regs->psb.savePP_DIVISOR = FUNC0(PP_CYCLE);

	/* HW overlay */
	regs->psb.saveOV_OVADD = FUNC0(OV_OVADD);
	regs->psb.saveOV_OGAMC0 = FUNC0(OV_OGAMC0);
	regs->psb.saveOV_OGAMC1 = FUNC0(OV_OGAMC1);
	regs->psb.saveOV_OGAMC2 = FUNC0(OV_OGAMC2);
	regs->psb.saveOV_OGAMC3 = FUNC0(OV_OGAMC3);
	regs->psb.saveOV_OGAMC4 = FUNC0(OV_OGAMC4);
	regs->psb.saveOV_OGAMC5 = FUNC0(OV_OGAMC5);

	/* DPST registers */
	regs->psb.saveHISTOGRAM_INT_CONTROL_REG =
					FUNC0(HISTOGRAM_INT_CONTROL);
	regs->psb.saveHISTOGRAM_LOGIC_CONTROL_REG =
					FUNC0(HISTOGRAM_LOGIC_CONTROL);
	regs->psb.savePWM_CONTROL_LOGIC = FUNC0(PWM_CONTROL_LOGIC);

	if (dev_priv->iLVDS_enable) {
		/* Shut down the panel */
		FUNC1(0, PP_CONTROL);

		do {
			pp_stat = FUNC0(PP_STATUS);
		} while (pp_stat & 0x80000000);

		/* Turn off the plane */
		FUNC1(0x58000000, DSPACNTR);
		/* Trigger the plane disable */
		FUNC1(0, DSPASURF);

		/* Wait ~4 ticks */
		FUNC2(4);

		/* Turn off pipe */
		FUNC1(0x0, PIPEACONF);
		/* Wait ~8 ticks */
		FUNC2(8);

		/* Turn off PLLs */
		FUNC1(0, MRST_DPLL_A);
	}
	return 0;
}