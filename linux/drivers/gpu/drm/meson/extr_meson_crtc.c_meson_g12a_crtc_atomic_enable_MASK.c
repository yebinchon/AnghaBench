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
struct meson_drm {scalar_t__ io_base; } ;
struct meson_crtc {struct meson_drm* priv; } ;
struct TYPE_2__ {int hdisplay; int vdisplay; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_crtc {struct drm_crtc_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPP_OSD1_BLD_H_SCOPE ; 
 int /*<<< orphan*/  VPP_OSD1_BLD_V_SCOPE ; 
 int /*<<< orphan*/  VPP_OUT_H_V_SIZE ; 
 int /*<<< orphan*/  VPP_POSTBLEND_H_SIZE ; 
 int /*<<< orphan*/  VPP_PREBLEND_VD1_V_START_END ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 struct meson_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc,
					  struct drm_crtc_state *old_state)
{
	struct meson_crtc *meson_crtc = FUNC6(crtc);
	struct drm_crtc_state *crtc_state = crtc->state;
	struct meson_drm *priv = meson_crtc->priv;

	FUNC0("\n");

	if (!crtc_state) {
		FUNC1("Invalid crtc_state\n");
		return;
	}

	/* VD1 Preblend vertical start/end */
	FUNC7(FUNC2(FUNC3(11, 0), 2303),
	       priv->io_base + FUNC4(VPP_PREBLEND_VD1_V_START_END));

	/* Setup Blender */
	FUNC7(crtc_state->mode.hdisplay |
	       crtc_state->mode.vdisplay << 16,
	       priv->io_base + FUNC4(VPP_POSTBLEND_H_SIZE));

	FUNC8(0 << 16 |
			(crtc_state->mode.hdisplay - 1),
			priv->io_base + FUNC4(VPP_OSD1_BLD_H_SCOPE));
	FUNC8(0 << 16 |
			(crtc_state->mode.vdisplay - 1),
			priv->io_base + FUNC4(VPP_OSD1_BLD_V_SCOPE));
	FUNC8(crtc_state->mode.hdisplay << 16 |
			crtc_state->mode.vdisplay,
			priv->io_base + FUNC4(VPP_OUT_H_V_SIZE));

	FUNC5(crtc);
}