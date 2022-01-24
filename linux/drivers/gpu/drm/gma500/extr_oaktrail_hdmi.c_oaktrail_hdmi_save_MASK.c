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
struct psb_state {void* saveDSPBCURSOR_POS; void* saveDSPBCURSOR_BASE; void* saveDSPBCURSOR_CTRL; } ;
struct psb_pipe {void** palette; void* tileoff; void* linoff; void* surf; void* addr; void* stride; void* cntr; void* vsync; void* vblank; void* vtotal; void* hsync; void* hblank; void* htotal; void* src; void* conf; } ;
struct oaktrail_hdmi_dev {void* savePCH_VSYNC_B; void* savePCH_VBLANK_B; void* savePCH_VTOTAL_B; void* savePCH_HSYNC_B; void* savePCH_HBLANK_B; void* savePCH_HTOTAL_B; void* savePCH_PIPEBSRC; void* savePCH_PIPEBCONF; void* saveDPLL_CLK_ENABLE; void* saveDPLL_UPDATE; void* saveDPLL_ADJUST; void* saveDPLL_DIV_CTRL; void* saveDPLL_CTRL; } ;
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
 scalar_t__ DSPBBASE ; 
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
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ VBLANK_B ; 
 scalar_t__ VSYNC_B ; 
 scalar_t__ VTOTAL_B ; 

void FUNC1(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct oaktrail_hdmi_dev *hdmi_dev = dev_priv->hdmi_priv;
	struct psb_state *regs = &dev_priv->regs.psb;
	struct psb_pipe *pipeb = &dev_priv->regs.pipe[1];
	int i;

	/* dpll */
	hdmi_dev->saveDPLL_CTRL = FUNC0(DPLL_CTRL);
	hdmi_dev->saveDPLL_DIV_CTRL = FUNC0(DPLL_DIV_CTRL);
	hdmi_dev->saveDPLL_ADJUST = FUNC0(DPLL_ADJUST);
	hdmi_dev->saveDPLL_UPDATE = FUNC0(DPLL_UPDATE);
	hdmi_dev->saveDPLL_CLK_ENABLE = FUNC0(DPLL_CLK_ENABLE);

	/* pipe B */
	pipeb->conf = FUNC0(PIPEBCONF);
	pipeb->src = FUNC0(PIPEBSRC);
	pipeb->htotal = FUNC0(HTOTAL_B);
	pipeb->hblank = FUNC0(HBLANK_B);
	pipeb->hsync = FUNC0(HSYNC_B);
	pipeb->vtotal = FUNC0(VTOTAL_B);
	pipeb->vblank = FUNC0(VBLANK_B);
	pipeb->vsync = FUNC0(VSYNC_B);

	hdmi_dev->savePCH_PIPEBCONF = FUNC0(PCH_PIPEBCONF);
	hdmi_dev->savePCH_PIPEBSRC = FUNC0(PCH_PIPEBSRC);
	hdmi_dev->savePCH_HTOTAL_B = FUNC0(PCH_HTOTAL_B);
	hdmi_dev->savePCH_HBLANK_B = FUNC0(PCH_HBLANK_B);
	hdmi_dev->savePCH_HSYNC_B  = FUNC0(PCH_HSYNC_B);
	hdmi_dev->savePCH_VTOTAL_B = FUNC0(PCH_VTOTAL_B);
	hdmi_dev->savePCH_VBLANK_B = FUNC0(PCH_VBLANK_B);
	hdmi_dev->savePCH_VSYNC_B  = FUNC0(PCH_VSYNC_B);

	/* plane */
	pipeb->cntr = FUNC0(DSPBCNTR);
	pipeb->stride = FUNC0(DSPBSTRIDE);
	pipeb->addr = FUNC0(DSPBBASE);
	pipeb->surf = FUNC0(DSPBSURF);
	pipeb->linoff = FUNC0(DSPBLINOFF);
	pipeb->tileoff = FUNC0(DSPBTILEOFF);

	/* cursor B */
	regs->saveDSPBCURSOR_CTRL = FUNC0(CURBCNTR);
	regs->saveDSPBCURSOR_BASE = FUNC0(CURBBASE);
	regs->saveDSPBCURSOR_POS = FUNC0(CURBPOS);

	/* save palette */
	for (i = 0; i < 256; i++)
		pipeb->palette[i] = FUNC0(PALETTE_B + (i << 2));
}