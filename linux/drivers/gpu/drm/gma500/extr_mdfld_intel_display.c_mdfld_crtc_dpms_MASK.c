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
struct psb_offset {int dpll; int conf; int cntr; int base; int status; } ;
struct gma_crtc {int pipe; } ;
struct drm_psb_private {int* pipeconf; struct psb_offset* regmap; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int DPLL_VCO_ENABLE ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int HS_CTRL_FIFO_EMPTY ; 
 int HS_DATA_FIFO_EMPTY ; 
 int MDFLD_PWR_GATE_EN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PIPEACONF ; 
 int PIPEACONF_ENABLE ; 
 int PIPECCONF ; 
 int PIPECONF_CURSOR_OFF ; 
 int PIPECONF_DSIPLL_LOCK ; 
 int PIPECONF_PLANE_OFF ; 
 int PIPE_VBLANK_STATUS ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int VGACNTRL ; 
 int VGA_DISP_DISABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct gma_crtc* FUNC12 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct drm_crtc *crtc, int mode)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc = FUNC12(crtc);
	int pipe = gma_crtc->pipe;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	u32 pipeconf = dev_priv->pipeconf[pipe];
	u32 temp;
	int timeout = 0;

	FUNC4(dev->dev, "mode = %d, pipe = %d\n", mode, pipe);

	/* Note: Old code uses pipe a stat for pipe b but that appears
	   to be a bug */

	if (!FUNC6(dev, true))
		return;

	/* XXX: When our outputs are all unaware of DPMS modes other than off
	 * and on, we should map those modes to DRM_MODE_DPMS_OFF in the CRTC.
	 */
	switch (mode) {
	case DRM_MODE_DPMS_ON:
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
		/* Enable the DPLL */
		temp = FUNC2(map->dpll);

		if ((temp & DPLL_VCO_ENABLE) == 0) {
			/* When ungating power of DPLL, needs to wait 0.5us
			   before enable the VCO */
			if (temp & MDFLD_PWR_GATE_EN) {
				temp &= ~MDFLD_PWR_GATE_EN;
				FUNC3(map->dpll, temp);
				/* FIXME_MDFLD PO - change 500 to 1 after PO */
				FUNC13(500);
			}

			FUNC3(map->dpll, temp);
			FUNC2(map->dpll);
			/* FIXME_MDFLD PO - change 500 to 1 after PO */
			FUNC13(500);

			FUNC3(map->dpll, temp | DPLL_VCO_ENABLE);
			FUNC2(map->dpll);

			/**
			 * wait for DSI PLL to lock
			 * NOTE: only need to poll status of pipe 0 and pipe 1,
			 * since both MIPI pipes share the same PLL.
			 */
			while ((pipe != 2) && (timeout < 20000) &&
			  !(FUNC2(map->conf) & PIPECONF_DSIPLL_LOCK)) {
				FUNC13(150);
				timeout++;
			}
		}

		/* Enable the plane */
		temp = FUNC2(map->cntr);
		if ((temp & DISPLAY_PLANE_ENABLE) == 0) {
			FUNC3(map->cntr,
				temp | DISPLAY_PLANE_ENABLE);
			/* Flush the plane changes */
			FUNC3(map->base, FUNC2(map->base));
		}

		/* Enable the pipe */
		temp = FUNC2(map->conf);
		if ((temp & PIPEACONF_ENABLE) == 0) {
			FUNC3(map->conf, pipeconf);

			/* Wait for for the pipe enable to take effect. */
			FUNC9(dev, pipe);
		}

		/*workaround for sighting 3741701 Random X blank display*/
		/*perform w/a in video mode only on pipe A or C*/
		if (pipe == 0 || pipe == 2) {
			FUNC3(map->status, FUNC2(map->status));
			FUNC11(100);
			if (PIPE_VBLANK_STATUS & FUNC2(map->status))
				FUNC4(dev->dev, "OK");
			else {
				FUNC4(dev->dev, "STUCK!!!!");
				/*shutdown controller*/
				temp = FUNC2(map->cntr);
				FUNC3(map->cntr,
						temp & ~DISPLAY_PLANE_ENABLE);
				FUNC3(map->base, FUNC2(map->base));
				/*mdfld_dsi_dpi_shut_down(dev, pipe);*/
				FUNC3(0xb048, 1);
				FUNC11(100);
				temp = FUNC2(map->conf);
				temp &= ~PIPEACONF_ENABLE;
				FUNC3(map->conf, temp);
				FUNC11(100); /*wait for pipe disable*/
				FUNC3(FUNC0(pipe), 0);
				FUNC11(100);
				FUNC3(0xb004, FUNC2(0xb004));
				/* try to bring the controller back up again*/
				FUNC3(FUNC0(pipe), 1);
				temp = FUNC2(map->cntr);
				FUNC3(map->cntr,
						temp | DISPLAY_PLANE_ENABLE);
				FUNC3(map->base, FUNC2(map->base));
				/*mdfld_dsi_dpi_turn_on(dev, pipe);*/
				FUNC3(0xb048, 2);
				FUNC11(100);
				temp = FUNC2(map->conf);
				temp |= PIPEACONF_ENABLE;
				FUNC3(map->conf, temp);
			}
		}

		FUNC5(crtc);

		/* Give the overlay scaler a chance to enable
		   if it's on this pipe */
		/* psb_intel_crtc_dpms_video(crtc, true); TODO */

		break;
	case DRM_MODE_DPMS_OFF:
		/* Give the overlay scaler a chance to disable
		 * if it's on this pipe */
		/* psb_intel_crtc_dpms_video(crtc, FALSE); TODO */
		if (pipe != 1)
			FUNC10(dev,
				FUNC1(pipe),
				HS_CTRL_FIFO_EMPTY | HS_DATA_FIFO_EMPTY);

		/* Disable the VGA plane that we never use */
		FUNC3(VGACNTRL, VGA_DISP_DISABLE);

		/* Disable display plane */
		temp = FUNC2(map->cntr);
		if ((temp & DISPLAY_PLANE_ENABLE) != 0) {
			FUNC3(map->cntr,
				  temp & ~DISPLAY_PLANE_ENABLE);
			/* Flush the plane changes */
			FUNC3(map->base, FUNC2(map->base));
			FUNC2(map->base);
		}

		/* Next, disable display pipes */
		temp = FUNC2(map->conf);
		if ((temp & PIPEACONF_ENABLE) != 0) {
			temp &= ~PIPEACONF_ENABLE;
			temp |= PIPECONF_PLANE_OFF | PIPECONF_CURSOR_OFF;
			FUNC3(map->conf, temp);
			FUNC2(map->conf);

			/* Wait for for the pipe disable to take effect. */
			FUNC8(dev, pipe);
		}

		temp = FUNC2(map->dpll);
		if (temp & DPLL_VCO_ENABLE) {
			if ((pipe != 1 && !((FUNC2(PIPEACONF)
				| FUNC2(PIPECCONF)) & PIPEACONF_ENABLE))
					|| pipe == 1) {
				temp &= ~(DPLL_VCO_ENABLE);
				FUNC3(map->dpll, temp);
				FUNC2(map->dpll);
				/* Wait for the clocks to turn off. */
				/* FIXME_MDFLD PO may need more delay */
				FUNC13(500);
			}
		}
		break;
	}
	FUNC7(dev);
}