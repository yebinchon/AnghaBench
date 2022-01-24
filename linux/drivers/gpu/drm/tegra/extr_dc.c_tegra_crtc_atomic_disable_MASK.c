#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tegra_dc {int /*<<< orphan*/  dev; int /*<<< orphan*/  stats; scalar_t__ rgb; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* dev; TYPE_1__* state; } ;
struct TYPE_4__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CMD_DISPLAY_POWER_CONTROL ; 
 int PM0_ENABLE ; 
 int PM1_ENABLE ; 
 int PW0_ENABLE ; 
 int PW1_ENABLE ; 
 int PW2_ENABLE ; 
 int PW3_ENABLE ; 
 int PW4_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dc*) ; 
 int FUNC6 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_dc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC11 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC12(struct drm_crtc *crtc,
				      struct drm_crtc_state *old_state)
{
	struct tegra_dc *dc = FUNC11(crtc);
	u32 value;

	if (!FUNC5(dc)) {
		FUNC8(dc);

		/*
		 * Ignore the return value, there isn't anything useful to do
		 * in case this fails.
		 */
		FUNC9(dc, 100);
	}

	/*
	 * This should really be part of the RGB encoder driver, but clearing
	 * these bits has the side-effect of stopping the display controller.
	 * When that happens no VBLANK interrupts will be raised. At the same
	 * time the encoder is disabled before the display controller, so the
	 * above code is always going to timeout waiting for the controller
	 * to go idle.
	 *
	 * Given the close coupling between the RGB encoder and the display
	 * controller doing it here is still kind of okay. None of the other
	 * encoder drivers require these bits to be cleared.
	 *
	 * XXX: Perhaps given that the display controller is switched off at
	 * this point anyway maybe clearing these bits isn't even useful for
	 * the RGB encoder?
	 */
	if (dc->rgb) {
		value = FUNC6(dc, DC_CMD_DISPLAY_POWER_CONTROL);
		value &= ~(PW0_ENABLE | PW1_ENABLE | PW2_ENABLE | PW3_ENABLE |
			   PW4_ENABLE | PM0_ENABLE | PM1_ENABLE);
		FUNC10(dc, value, DC_CMD_DISPLAY_POWER_CONTROL);
	}

	FUNC7(&dc->stats);
	FUNC1(crtc);

	FUNC3(&crtc->dev->event_lock);

	if (crtc->state->event) {
		FUNC0(crtc, crtc->state->event);
		crtc->state->event = NULL;
	}

	FUNC4(&crtc->dev->event_lock);

	FUNC2(dc->dev);
}