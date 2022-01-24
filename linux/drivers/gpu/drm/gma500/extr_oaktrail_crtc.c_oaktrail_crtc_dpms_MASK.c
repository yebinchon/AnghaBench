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
struct psb_offset {int /*<<< orphan*/  dpll; int /*<<< orphan*/  conf; int /*<<< orphan*/  base; int /*<<< orphan*/  cntr; } ;
struct gma_crtc {int pipe; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int DPLL_VCO_ENABLE ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int /*<<< orphan*/  DSPARB ; 
 int /*<<< orphan*/  DSPCHICKENBIT ; 
 int /*<<< orphan*/  DSPFW1 ; 
 int /*<<< orphan*/  DSPFW2 ; 
 int /*<<< orphan*/  DSPFW3 ; 
 int /*<<< orphan*/  DSPFW4 ; 
 int /*<<< orphan*/  DSPFW5 ; 
 int /*<<< orphan*/  DSPFW6 ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  INTEL_OUTPUT_SDVO ; 
 int PIPEACONF_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  VGACNTRL ; 
 int VGA_DISP_DISABLE ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 scalar_t__ FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*,int) ; 
 struct gma_crtc* FUNC10 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct drm_crtc *crtc, int mode)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc = FUNC10(crtc);
	int pipe = gma_crtc->pipe;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	u32 temp;
	int i;
	int need_aux = FUNC5(crtc, INTEL_OUTPUT_SDVO) ? 1 : 0;

	if (FUNC5(crtc, INTEL_OUTPUT_HDMI)) {
		FUNC9(crtc, mode);
		return;
	}

	if (!FUNC6(dev, true))
		return;

	/* XXX: When our outputs are all unaware of DPMS modes other than off
	 * and on, we should map those modes to DRM_MODE_DPMS_OFF in the CRTC.
	 */
	switch (mode) {
	case DRM_MODE_DPMS_ON:
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
		for (i = 0; i <= need_aux; i++) {
			/* Enable the DPLL */
			temp = FUNC1(map->dpll, i);
			if ((temp & DPLL_VCO_ENABLE) == 0) {
				FUNC3(map->dpll, temp, i);
				FUNC1(map->dpll, i);
				/* Wait for the clocks to stabilize. */
				FUNC11(150);
				FUNC3(map->dpll,
						   temp | DPLL_VCO_ENABLE, i);
				FUNC1(map->dpll, i);
				/* Wait for the clocks to stabilize. */
				FUNC11(150);
				FUNC3(map->dpll,
						   temp | DPLL_VCO_ENABLE, i);
				FUNC1(map->dpll, i);
				/* Wait for the clocks to stabilize. */
				FUNC11(150);
			}

			/* Enable the pipe */
			temp = FUNC1(map->conf, i);
			if ((temp & PIPEACONF_ENABLE) == 0) {
				FUNC3(map->conf,
						   temp | PIPEACONF_ENABLE, i);
			}

			/* Enable the plane */
			temp = FUNC1(map->cntr, i);
			if ((temp & DISPLAY_PLANE_ENABLE) == 0) {
				FUNC3(map->cntr,
						   temp | DISPLAY_PLANE_ENABLE,
						   i);
				/* Flush the plane changes */
				FUNC3(map->base,
					FUNC1(map->base, i), i);
			}

		}
		FUNC4(crtc);

		/* Give the overlay scaler a chance to enable
		   if it's on this pipe */
		/* psb_intel_crtc_dpms_video(crtc, true); TODO */
		break;
	case DRM_MODE_DPMS_OFF:
		/* Give the overlay scaler a chance to disable
		 * if it's on this pipe */
		/* psb_intel_crtc_dpms_video(crtc, FALSE); TODO */

		for (i = 0; i <= need_aux; i++) {
			/* Disable the VGA plane that we never use */
			FUNC3(VGACNTRL, VGA_DISP_DISABLE, i);
			/* Disable display plane */
			temp = FUNC1(map->cntr, i);
			if ((temp & DISPLAY_PLANE_ENABLE) != 0) {
				FUNC3(map->cntr,
					temp & ~DISPLAY_PLANE_ENABLE, i);
				/* Flush the plane changes */
				FUNC3(map->base,
						   FUNC0(map->base), i);
				FUNC1(map->base, i);
			}

			/* Next, disable display pipes */
			temp = FUNC1(map->conf, i);
			if ((temp & PIPEACONF_ENABLE) != 0) {
				FUNC3(map->conf,
						   temp & ~PIPEACONF_ENABLE, i);
				FUNC1(map->conf, i);
			}
			/* Wait for for the pipe disable to take effect. */
			FUNC8(dev);

			temp = FUNC1(map->dpll, i);
			if ((temp & DPLL_VCO_ENABLE) != 0) {
				FUNC3(map->dpll,
						   temp & ~DPLL_VCO_ENABLE, i);
				FUNC1(map->dpll, i);
			}

			/* Wait for the clocks to turn off. */
			FUNC11(150);
		}
		break;
	}

	/* Set FIFO Watermarks (values taken from EMGD) */
	FUNC2(DSPARB, 0x3f80);
	FUNC2(DSPFW1, 0x3f8f0404);
	FUNC2(DSPFW2, 0x04040f04);
	FUNC2(DSPFW3, 0x0);
	FUNC2(DSPFW4, 0x04040404);
	FUNC2(DSPFW5, 0x04040404);
	FUNC2(DSPFW6, 0x78);
	FUNC2(DSPCHICKENBIT, FUNC0(DSPCHICKENBIT) | 0xc040);

	FUNC7(dev);
}