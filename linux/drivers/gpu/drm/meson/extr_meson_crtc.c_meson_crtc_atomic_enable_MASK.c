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
struct TYPE_2__ {int /*<<< orphan*/  hdisplay; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_crtc {struct drm_crtc_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPP_MISC ; 
 int /*<<< orphan*/  VPP_POSTBLEND_ENABLE ; 
 int /*<<< orphan*/  VPP_POSTBLEND_H_SIZE ; 
 int /*<<< orphan*/  VPP_PREBLEND_VD1_V_START_END ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 struct meson_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

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

	/* Enable VPP Postblend */
	FUNC7(crtc_state->mode.hdisplay,
	       priv->io_base + FUNC4(VPP_POSTBLEND_H_SIZE));

	/* VD1 Preblend vertical start/end */
	FUNC7(FUNC2(FUNC3(11, 0), 2303),
			priv->io_base + FUNC4(VPP_PREBLEND_VD1_V_START_END));

	FUNC8(VPP_POSTBLEND_ENABLE, VPP_POSTBLEND_ENABLE,
			    priv->io_base + FUNC4(VPP_MISC));

	FUNC5(crtc);
}