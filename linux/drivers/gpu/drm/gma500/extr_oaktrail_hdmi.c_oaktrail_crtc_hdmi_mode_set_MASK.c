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
typedef  int u32 ;
struct oaktrail_hdmi_dev {int dummy; } ;
struct oaktrail_hdmi_clock {int nf; int nr; int np; } ;
struct drm_psb_private {struct oaktrail_hdmi_dev* hdmi_priv; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int crtc_hblank_start; int crtc_hblank_end; int crtc_hsync_start; int crtc_hsync_end; int crtc_vdisplay; int crtc_vtotal; int crtc_vblank_start; int crtc_vblank_end; int crtc_vsync_start; int crtc_vsync_end; int crtc_hdisplay; int crtc_htotal; int vdisplay; int hdisplay; int /*<<< orphan*/  clock; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc_helper_funcs {int /*<<< orphan*/  (* mode_set_base ) (struct drm_crtc*,int,int,struct drm_framebuffer*) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; struct drm_device* dev; } ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int DISPPLANE_GAMMA_ENABLE ; 
 int DISPPLANE_SEL_PIPE_B ; 
 int DPLL_ADJUST ; 
 int DPLL_CLK_ENABLE ; 
 int DPLL_CTRL ; 
 int DPLL_DITHEN ; 
 int DPLL_DIV_CTRL ; 
 int DPLL_ENSTAT ; 
 int DPLL_PDIV_MASK ; 
 int DPLL_PDIV_SHIFT ; 
 int DPLL_PWRDN ; 
 int DPLL_RESET ; 
 int DPLL_STATUS ; 
 int DPLL_UPDATE ; 
 int DSPAPOS ; 
 int DSPASIZE ; 
 int DSPBCNTR ; 
 int DSPBPOS ; 
 int DSPBSIZE ; 
 int HBLANK_A ; 
 int HBLANK_B ; 
 int HDMI_HBLANK_A ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int HSYNC_A ; 
 int HSYNC_B ; 
 int HTOTAL_A ; 
 int HTOTAL_B ; 
 int PCH_HBLANK_B ; 
 int PCH_HSYNC_B ; 
 int PCH_HTOTAL_B ; 
 int PCH_PIPEBCONF ; 
 int PCH_PIPEBSRC ; 
 int PCH_VBLANK_B ; 
 int PCH_VSYNC_B ; 
 int PCH_VTOTAL_B ; 
 int PIPEACONF ; 
 int PIPEACONF_ENABLE ; 
 int PIPEASRC ; 
 int PIPEBCONF ; 
 int PIPEBSRC ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int VBLANK_A ; 
 int VBLANK_B ; 
 int VGACNTRL ; 
 int VGA_DISP_DISABLE ; 
 int VSYNC_A ; 
 int VSYNC_B ; 
 int VTOTAL_A ; 
 int VTOTAL_B ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,int /*<<< orphan*/ ,int,struct oaktrail_hdmi_clock*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*,int,int,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(struct drm_crtc *crtc,
			    struct drm_display_mode *mode,
			    struct drm_display_mode *adjusted_mode,
			    int x, int y,
			    struct drm_framebuffer *old_fb)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct oaktrail_hdmi_dev *hdmi_dev = dev_priv->hdmi_priv;
	int pipe = 1;
	int htot_reg = (pipe == 0) ? HTOTAL_A : HTOTAL_B;
	int hblank_reg = (pipe == 0) ? HBLANK_A : HBLANK_B;
	int hsync_reg = (pipe == 0) ? HSYNC_A : HSYNC_B;
	int vtot_reg = (pipe == 0) ? VTOTAL_A : VTOTAL_B;
	int vblank_reg = (pipe == 0) ? VBLANK_A : VBLANK_B;
	int vsync_reg = (pipe == 0) ? VSYNC_A : VSYNC_B;
	int dspsize_reg = (pipe == 0) ? DSPASIZE : DSPBSIZE;
	int dsppos_reg = (pipe == 0) ? DSPAPOS : DSPBPOS;
	int pipesrc_reg = (pipe == 0) ? PIPEASRC : PIPEBSRC;
	int pipeconf_reg = (pipe == 0) ? PIPEACONF : PIPEBCONF;
	int refclk;
	struct oaktrail_hdmi_clock clock;
	u32 dspcntr, pipeconf, dpll, temp;
	int dspcntr_reg = DSPBCNTR;

	if (!FUNC3(dev, true))
		return 0;

	/* Disable the VGA plane that we never use */
	FUNC2(VGACNTRL, VGA_DISP_DISABLE);

	/* Disable dpll if necessary */
	dpll = FUNC1(DPLL_CTRL);
	if ((dpll & DPLL_PWRDN) == 0) {
		FUNC2(DPLL_CTRL, dpll | (DPLL_PWRDN | DPLL_RESET));
		FUNC2(DPLL_DIV_CTRL, 0x00000000);
		FUNC2(DPLL_STATUS, 0x1);
	}
	FUNC10(150);

	/* Reset controller */
	FUNC8(dev);

	/* program and enable dpll */
	refclk = 25000;
	FUNC7(crtc, adjusted_mode->clock, refclk, &clock);

	/* Set the DPLL */
	dpll = FUNC1(DPLL_CTRL);
	dpll &= ~DPLL_PDIV_MASK;
	dpll &= ~(DPLL_PWRDN | DPLL_RESET);
	FUNC2(DPLL_CTRL, 0x00000008);
	FUNC2(DPLL_DIV_CTRL, ((clock.nf << 6) | clock.nr));
	FUNC2(DPLL_ADJUST, ((clock.nf >> 14) - 1));
	FUNC2(DPLL_CTRL, (dpll | (clock.np << DPLL_PDIV_SHIFT) | DPLL_ENSTAT | DPLL_DITHEN));
	FUNC2(DPLL_UPDATE, 0x80000000);
	FUNC2(DPLL_CLK_ENABLE, 0x80050102);
	FUNC10(150);

	/* configure HDMI */
	FUNC0(0x1004, 0x1fd);
	FUNC0(0x2000, 0x1);
	FUNC0(0x2008, 0x0);
	FUNC0(0x3130, 0x8);
	FUNC0(0x101c, 0x1800810);

	temp = FUNC6(adjusted_mode);
	FUNC2(htot_reg, temp);
	FUNC2(hblank_reg, (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc_hblank_end - 1) << 16));
	FUNC2(hsync_reg, (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_hsync_end - 1) << 16));
	FUNC2(vtot_reg, (adjusted_mode->crtc_vdisplay - 1) | ((adjusted_mode->crtc_vtotal - 1) << 16));
	FUNC2(vblank_reg, (adjusted_mode->crtc_vblank_start - 1) | ((adjusted_mode->crtc_vblank_end - 1) << 16));
	FUNC2(vsync_reg, (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_vsync_end - 1) << 16));
	FUNC2(pipesrc_reg, ((mode->crtc_hdisplay - 1) << 16) |  (mode->crtc_vdisplay - 1));

	FUNC2(PCH_HTOTAL_B, (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_htotal - 1) << 16));
	FUNC2(PCH_HBLANK_B, (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc_hblank_end - 1) << 16));
	FUNC2(PCH_HSYNC_B, (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_hsync_end - 1) << 16));
	FUNC2(PCH_VTOTAL_B, (adjusted_mode->crtc_vdisplay - 1) | ((adjusted_mode->crtc_vtotal - 1) << 16));
	FUNC2(PCH_VBLANK_B, (adjusted_mode->crtc_vblank_start - 1) | ((adjusted_mode->crtc_vblank_end - 1) << 16));
	FUNC2(PCH_VSYNC_B, (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_vsync_end - 1) << 16));
	FUNC2(PCH_PIPEBSRC, ((mode->crtc_hdisplay - 1) << 16) |  (mode->crtc_vdisplay - 1));

	temp = adjusted_mode->crtc_hblank_end - adjusted_mode->crtc_hblank_start;
	FUNC0(HDMI_HBLANK_A, ((adjusted_mode->crtc_hdisplay - 1) << 16) |  temp);

	FUNC2(dspsize_reg, ((mode->vdisplay - 1) << 16) | (mode->hdisplay - 1));
	FUNC2(dsppos_reg, 0);

	/* Flush the plane changes */
	{
		const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
		crtc_funcs->mode_set_base(crtc, x, y, old_fb);
	}

	/* Set up the display plane register */
	dspcntr = FUNC1(dspcntr_reg);
	dspcntr |= DISPPLANE_GAMMA_ENABLE;
	dspcntr |= DISPPLANE_SEL_PIPE_B;
	dspcntr |= DISPLAY_PLANE_ENABLE;

	/* setup pipeconf */
	pipeconf = FUNC1(pipeconf_reg);
	pipeconf |= PIPEACONF_ENABLE;

	FUNC2(pipeconf_reg, pipeconf);
	FUNC1(pipeconf_reg);

	FUNC2(PCH_PIPEBCONF, pipeconf);
	FUNC1(PCH_PIPEBCONF);
	FUNC5(dev);

	FUNC2(dspcntr_reg, dspcntr);
	FUNC5(dev);

	FUNC4(dev);

	return 0;
}