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
struct psb_offset {int /*<<< orphan*/  dpll; int /*<<< orphan*/  conf; int /*<<< orphan*/  base; int /*<<< orphan*/  cntr; int /*<<< orphan*/  status; } ;
struct gma_crtc {int pipe; int active; } ;
struct drm_psb_private {TYPE_1__* ops; struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_wm ) (struct drm_device*,struct drm_crtc*) ;int /*<<< orphan*/  (* disable_sr ) (struct drm_device*) ;} ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int DPLL_VCO_ENABLE ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int /*<<< orphan*/  DSPARB ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int PIPEACONF_ENABLE ; 
 int PIPE_FIFO_UNDERRUN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VGACNTRL ; 
 int VGA_DISP_DISABLE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_crtc*) ; 
 struct gma_crtc* FUNC8 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(struct drm_crtc *crtc, int mode)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc = FUNC8(crtc);
	int pipe = gma_crtc->pipe;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	u32 temp;

	/* XXX: When our outputs are all unaware of DPMS modes other than off
	 * and on, we should map those modes to DRM_MODE_DPMS_OFF in the CRTC.
	 */

	if (FUNC0(dev))
		dev_priv->ops->disable_sr(dev);

	switch (mode) {
	case DRM_MODE_DPMS_ON:
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
		if (gma_crtc->active)
			break;

		gma_crtc->active = true;

		/* Enable the DPLL */
		temp = FUNC1(map->dpll);
		if ((temp & DPLL_VCO_ENABLE) == 0) {
			FUNC2(map->dpll, temp);
			FUNC1(map->dpll);
			/* Wait for the clocks to stabilize. */
			FUNC9(150);
			FUNC2(map->dpll, temp | DPLL_VCO_ENABLE);
			FUNC1(map->dpll);
			/* Wait for the clocks to stabilize. */
			FUNC9(150);
			FUNC2(map->dpll, temp | DPLL_VCO_ENABLE);
			FUNC1(map->dpll);
			/* Wait for the clocks to stabilize. */
			FUNC9(150);
		}

		/* Enable the plane */
		temp = FUNC1(map->cntr);
		if ((temp & DISPLAY_PLANE_ENABLE) == 0) {
			FUNC2(map->cntr,
				  temp | DISPLAY_PLANE_ENABLE);
			/* Flush the plane changes */
			FUNC2(map->base, FUNC1(map->base));
		}

		FUNC9(150);

		/* Enable the pipe */
		temp = FUNC1(map->conf);
		if ((temp & PIPEACONF_ENABLE) == 0)
			FUNC2(map->conf, temp | PIPEACONF_ENABLE);

		temp = FUNC1(map->status);
		temp &= ~(0xFFFF);
		temp |= PIPE_FIFO_UNDERRUN;
		FUNC2(map->status, temp);
		FUNC1(map->status);

		FUNC4(crtc);

		/* Give the overlay scaler a chance to enable
		 * if it's on this pipe */
		/* psb_intel_crtc_dpms_video(crtc, true); TODO */
		break;
	case DRM_MODE_DPMS_OFF:
		if (!gma_crtc->active)
			break;

		gma_crtc->active = false;

		/* Give the overlay scaler a chance to disable
		 * if it's on this pipe */
		/* psb_intel_crtc_dpms_video(crtc, FALSE); TODO */

		/* Disable the VGA plane that we never use */
		FUNC2(VGACNTRL, VGA_DISP_DISABLE);

		/* Turn off vblank interrupts */
		FUNC3(crtc);

		/* Wait for vblank for the disable to take effect */
		FUNC5(dev);

		/* Disable plane */
		temp = FUNC1(map->cntr);
		if ((temp & DISPLAY_PLANE_ENABLE) != 0) {
			FUNC2(map->cntr,
				  temp & ~DISPLAY_PLANE_ENABLE);
			/* Flush the plane changes */
			FUNC2(map->base, FUNC1(map->base));
			FUNC1(map->base);
		}

		/* Disable pipe */
		temp = FUNC1(map->conf);
		if ((temp & PIPEACONF_ENABLE) != 0) {
			FUNC2(map->conf, temp & ~PIPEACONF_ENABLE);
			FUNC1(map->conf);
		}

		/* Wait for vblank for the disable to take effect. */
		FUNC5(dev);

		FUNC9(150);

		/* Disable DPLL */
		temp = FUNC1(map->dpll);
		if ((temp & DPLL_VCO_ENABLE) != 0) {
			FUNC2(map->dpll, temp & ~DPLL_VCO_ENABLE);
			FUNC1(map->dpll);
		}

		/* Wait for the clocks to turn off. */
		FUNC9(150);
		break;
	}

	if (FUNC0(dev))
		dev_priv->ops->update_wm(dev, crtc);

	/* Set FIFO watermarks */
	FUNC2(DSPARB, 0x3F3E);
}