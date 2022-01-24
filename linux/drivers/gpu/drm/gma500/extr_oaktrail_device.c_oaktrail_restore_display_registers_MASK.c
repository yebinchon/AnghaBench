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
struct TYPE_2__ {int saveDSPARB; int saveDSPFW1; int saveDSPFW2; int saveDSPFW3; int saveDSPFW4; int saveDSPFW5; int saveDSPFW6; int saveCHICKENBIT; int saveBCLRPAT_A; int savePERF_MODE; int saveDSPACURSOR_CTRL; int saveDSPACURSOR_POS; int saveDSPACURSOR_BASE; int saveLVDS; int savePFIT_CONTROL; int savePFIT_PGM_RATIOS; int savePFIT_AUTO_RATIOS; int savePP_ON_DELAYS; int savePP_OFF_DELAYS; int savePP_DIVISOR; int savePP_CONTROL; int saveOV_OVADD; int saveOV_OGAMC0; int saveOV_OGAMC1; int saveOV_OGAMC2; int saveOV_OGAMC3; int saveOV_OGAMC4; int saveOV_OGAMC5; int saveHISTOGRAM_INT_CONTROL_REG; int saveHISTOGRAM_LOGIC_CONTROL_REG; int savePWM_CONTROL_LOGIC; } ;
struct psb_save_area {int saveBLC_PWM_CTL2; int saveBLC_PWM_CTL; TYPE_1__ psb; struct psb_pipe* pipe; } ;
struct psb_pipe {int fp0; int fp1; int dpll; int htotal; int hblank; int hsync; int vtotal; int vblank; int vsync; int src; int conf; int linoff; int stride; int tileoff; int cntr; int surf; int* palette; } ;
struct drm_psb_private {scalar_t__ iLVDS_enable; scalar_t__ hdmi_priv; struct psb_save_area regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ BCLRPAT_A ; 
 scalar_t__ BLC_PWM_CTL ; 
 scalar_t__ BLC_PWM_CTL2 ; 
 scalar_t__ CURABASE ; 
 scalar_t__ CURACNTR ; 
 scalar_t__ CURAPOS ; 
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
 int /*<<< orphan*/  PP_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ PWM_CONTROL_LOGIC ; 
 scalar_t__ VBLANK_A ; 
 scalar_t__ VGACNTRL ; 
 scalar_t__ VSYNC_A ; 
 scalar_t__ VTOTAL_A ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_save_area *regs = &dev_priv->regs;
	struct psb_pipe *p = &regs->pipe[0];
	u32 pp_stat;
	int i;

	/* Display arbitration + watermarks */
	FUNC1(regs->psb.saveDSPARB, DSPARB);
	FUNC1(regs->psb.saveDSPFW1, DSPFW1);
	FUNC1(regs->psb.saveDSPFW2, DSPFW2);
	FUNC1(regs->psb.saveDSPFW3, DSPFW3);
	FUNC1(regs->psb.saveDSPFW4, DSPFW4);
	FUNC1(regs->psb.saveDSPFW5, DSPFW5);
	FUNC1(regs->psb.saveDSPFW6, DSPFW6);
	FUNC1(regs->psb.saveCHICKENBIT, DSPCHICKENBIT);

	/* Make sure VGA plane is off. it initializes to on after reset!*/
	FUNC1(0x80000000, VGACNTRL);

	/* set the plls */
	FUNC1(p->fp0, MRST_FPA0);
	FUNC1(p->fp1, MRST_FPA1);

	/* Actually enable it */
	FUNC1(p->dpll, MRST_DPLL_A);
	FUNC3(150);

	/* Restore mode */
	FUNC1(p->htotal, HTOTAL_A);
	FUNC1(p->hblank, HBLANK_A);
	FUNC1(p->hsync, HSYNC_A);
	FUNC1(p->vtotal, VTOTAL_A);
	FUNC1(p->vblank, VBLANK_A);
	FUNC1(p->vsync, VSYNC_A);
	FUNC1(p->src, PIPEASRC);
	FUNC1(regs->psb.saveBCLRPAT_A, BCLRPAT_A);

	/* Restore performance mode*/
	FUNC1(regs->psb.savePERF_MODE, MRST_PERF_MODE);

	/* Enable the pipe*/
	if (dev_priv->iLVDS_enable)
		FUNC1(p->conf, PIPEACONF);

	/* Set up the plane*/
	FUNC1(p->linoff, DSPALINOFF);
	FUNC1(p->stride, DSPASTRIDE);
	FUNC1(p->tileoff, DSPATILEOFF);

	/* Enable the plane */
	FUNC1(p->cntr, DSPACNTR);
	FUNC1(p->surf, DSPASURF);

	/* Enable Cursor A */
	FUNC1(regs->psb.saveDSPACURSOR_CTRL, CURACNTR);
	FUNC1(regs->psb.saveDSPACURSOR_POS, CURAPOS);
	FUNC1(regs->psb.saveDSPACURSOR_BASE, CURABASE);

	/* Restore palette (gamma) */
	for (i = 0; i < 256; i++)
		FUNC1(p->palette[i], PALETTE_A + (i << 2));

	if (dev_priv->hdmi_priv)
		FUNC2(dev);

	if (dev_priv->iLVDS_enable) {
		FUNC1(regs->saveBLC_PWM_CTL2, BLC_PWM_CTL2);
		FUNC1(regs->psb.saveLVDS, LVDS); /*port 61180h*/
		FUNC1(regs->psb.savePFIT_CONTROL, PFIT_CONTROL);
		FUNC1(regs->psb.savePFIT_PGM_RATIOS, PFIT_PGM_RATIOS);
		FUNC1(regs->psb.savePFIT_AUTO_RATIOS, PFIT_AUTO_RATIOS);
		FUNC1(regs->saveBLC_PWM_CTL, BLC_PWM_CTL);
		FUNC1(regs->psb.savePP_ON_DELAYS, LVDSPP_ON);
		FUNC1(regs->psb.savePP_OFF_DELAYS, LVDSPP_OFF);
		FUNC1(regs->psb.savePP_DIVISOR, PP_CYCLE);
		FUNC1(regs->psb.savePP_CONTROL, PP_CONTROL);
	}

	/* Wait for cycle delay */
	do {
		pp_stat = FUNC0(PP_STATUS);
	} while (pp_stat & 0x08000000);

	/* Wait for panel power up */
	do {
		pp_stat = FUNC0(PP_STATUS);
	} while (pp_stat & 0x10000000);

	/* Restore HW overlay */
	FUNC1(regs->psb.saveOV_OVADD, OV_OVADD);
	FUNC1(regs->psb.saveOV_OGAMC0, OV_OGAMC0);
	FUNC1(regs->psb.saveOV_OGAMC1, OV_OGAMC1);
	FUNC1(regs->psb.saveOV_OGAMC2, OV_OGAMC2);
	FUNC1(regs->psb.saveOV_OGAMC3, OV_OGAMC3);
	FUNC1(regs->psb.saveOV_OGAMC4, OV_OGAMC4);
	FUNC1(regs->psb.saveOV_OGAMC5, OV_OGAMC5);

	/* DPST registers */
	FUNC1(regs->psb.saveHISTOGRAM_INT_CONTROL_REG,
						HISTOGRAM_INT_CONTROL);
	FUNC1(regs->psb.saveHISTOGRAM_LOGIC_CONTROL_REG,
						HISTOGRAM_LOGIC_CONTROL);
	FUNC1(regs->psb.savePWM_CONTROL_LOGIC, PWM_CONTROL_LOGIC);

	return 0;
}