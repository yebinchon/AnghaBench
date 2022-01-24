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
struct psb_state {int /*<<< orphan*/  saveDSPBCURSOR_BASE; int /*<<< orphan*/  saveDSPBCURSOR_POS; int /*<<< orphan*/  saveDSPBCURSOR_CTRL; } ;
struct psb_pipe {int /*<<< orphan*/ * palette; int /*<<< orphan*/  surf; int /*<<< orphan*/  cntr; int /*<<< orphan*/  tileoff; int /*<<< orphan*/  stride; int /*<<< orphan*/  linoff; int /*<<< orphan*/  conf; int /*<<< orphan*/  vsync; int /*<<< orphan*/  vblank; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  hsync; int /*<<< orphan*/  hblank; int /*<<< orphan*/  htotal; int /*<<< orphan*/  src; } ;
struct oaktrail_hdmi_dev {int /*<<< orphan*/  savePCH_PIPEBCONF; int /*<<< orphan*/  savePCH_VSYNC_B; int /*<<< orphan*/  savePCH_VBLANK_B; int /*<<< orphan*/  savePCH_VTOTAL_B; int /*<<< orphan*/  savePCH_HSYNC_B; int /*<<< orphan*/  savePCH_HBLANK_B; int /*<<< orphan*/  savePCH_HTOTAL_B; int /*<<< orphan*/  savePCH_PIPEBSRC; int /*<<< orphan*/  saveDPLL_CLK_ENABLE; int /*<<< orphan*/  saveDPLL_UPDATE; int /*<<< orphan*/  saveDPLL_ADJUST; int /*<<< orphan*/  saveDPLL_DIV_CTRL; int /*<<< orphan*/  saveDPLL_CTRL; } ;
struct TYPE_2__ {struct psb_pipe* pipe; struct psb_state psb; } ;
struct drm_psb_private {TYPE_1__ regs; struct oaktrail_hdmi_dev* hdmi_priv; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ CURBBASE ; 
 scalar_t__ CURBCNTR ; 
 scalar_t__ CURBPOS ; 
 scalar_t__ DPLL_ADJUST ; 
 scalar_t__ DPLL_CLK_ENABLE ; 
 scalar_t__ DPLL_CTRL ; 
 scalar_t__ DPLL_DIV_CTRL ; 
 scalar_t__ DPLL_UPDATE ; 
 scalar_t__ DSPBCNTR ; 
 scalar_t__ DSPBLINOFF ; 
 scalar_t__ DSPBSTRIDE ; 
 scalar_t__ DSPBSURF ; 
 scalar_t__ DSPBTILEOFF ; 
 scalar_t__ HBLANK_B ; 
 scalar_t__ HSYNC_B ; 
 scalar_t__ HTOTAL_B ; 
 scalar_t__ PALETTE_B ; 
 scalar_t__ PCH_HBLANK_B ; 
 scalar_t__ PCH_HSYNC_B ; 
 scalar_t__ PCH_HTOTAL_B ; 
 scalar_t__ PCH_PIPEBCONF ; 
 scalar_t__ PCH_PIPEBSRC ; 
 scalar_t__ PCH_VBLANK_B ; 
 scalar_t__ PCH_VSYNC_B ; 
 scalar_t__ PCH_VTOTAL_B ; 
 scalar_t__ PIPEBCONF ; 
 scalar_t__ PIPEBSRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ VBLANK_B ; 
 scalar_t__ VSYNC_B ; 
 scalar_t__ VTOTAL_B ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct oaktrail_hdmi_dev *hdmi_dev = dev_priv->hdmi_priv;
	struct psb_state *regs = &dev_priv->regs.psb;
	struct psb_pipe *pipeb = &dev_priv->regs.pipe[1];
	int i;

	/* dpll */
	FUNC0(hdmi_dev->saveDPLL_CTRL, DPLL_CTRL);
	FUNC0(hdmi_dev->saveDPLL_DIV_CTRL, DPLL_DIV_CTRL);
	FUNC0(hdmi_dev->saveDPLL_ADJUST, DPLL_ADJUST);
	FUNC0(hdmi_dev->saveDPLL_UPDATE, DPLL_UPDATE);
	FUNC0(hdmi_dev->saveDPLL_CLK_ENABLE, DPLL_CLK_ENABLE);
	FUNC1(150);

	/* pipe */
	FUNC0(pipeb->src, PIPEBSRC);
	FUNC0(pipeb->htotal, HTOTAL_B);
	FUNC0(pipeb->hblank, HBLANK_B);
	FUNC0(pipeb->hsync,  HSYNC_B);
	FUNC0(pipeb->vtotal, VTOTAL_B);
	FUNC0(pipeb->vblank, VBLANK_B);
	FUNC0(pipeb->vsync,  VSYNC_B);

	FUNC0(hdmi_dev->savePCH_PIPEBSRC, PCH_PIPEBSRC);
	FUNC0(hdmi_dev->savePCH_HTOTAL_B, PCH_HTOTAL_B);
	FUNC0(hdmi_dev->savePCH_HBLANK_B, PCH_HBLANK_B);
	FUNC0(hdmi_dev->savePCH_HSYNC_B,  PCH_HSYNC_B);
	FUNC0(hdmi_dev->savePCH_VTOTAL_B, PCH_VTOTAL_B);
	FUNC0(hdmi_dev->savePCH_VBLANK_B, PCH_VBLANK_B);
	FUNC0(hdmi_dev->savePCH_VSYNC_B,  PCH_VSYNC_B);

	FUNC0(pipeb->conf, PIPEBCONF);
	FUNC0(hdmi_dev->savePCH_PIPEBCONF, PCH_PIPEBCONF);

	/* plane */
	FUNC0(pipeb->linoff, DSPBLINOFF);
	FUNC0(pipeb->stride, DSPBSTRIDE);
	FUNC0(pipeb->tileoff, DSPBTILEOFF);
	FUNC0(pipeb->cntr, DSPBCNTR);
	FUNC0(pipeb->surf, DSPBSURF);

	/* cursor B */
	FUNC0(regs->saveDSPBCURSOR_CTRL, CURBCNTR);
	FUNC0(regs->saveDSPBCURSOR_POS, CURBPOS);
	FUNC0(regs->saveDSPBCURSOR_BASE, CURBBASE);

	/* restore palette */
	for (i = 0; i < 256; i++)
		FUNC0(pipeb->palette[i], PALETTE_B + (i << 2));
}