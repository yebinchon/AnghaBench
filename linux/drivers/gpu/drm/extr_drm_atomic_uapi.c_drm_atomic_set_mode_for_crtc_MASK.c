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
typedef  int /*<<< orphan*/  umode ;
struct drm_mode_modeinfo {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  name; } ;
struct drm_crtc_state {int enable; int /*<<< orphan*/  mode; int /*<<< orphan*/ * mode_blob; struct drm_crtc* crtc; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {int /*<<< orphan*/  name; TYPE_1__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_crtc_state*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mode_modeinfo*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,struct drm_mode_modeinfo*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct drm_display_mode const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct drm_crtc_state *state,
				 const struct drm_display_mode *mode)
{
	struct drm_crtc *crtc = state->crtc;
	struct drm_mode_modeinfo umode;

	/* Early return for no change. */
	if (mode && FUNC7(&state->mode, mode, sizeof(*mode)) == 0)
		return 0;

	FUNC5(state->mode_blob);
	state->mode_blob = NULL;

	if (mode) {
		FUNC3(&umode, mode);
		state->mode_blob =
			FUNC6(state->crtc->dev,
		                                 sizeof(umode),
		                                 &umode);
		if (FUNC1(state->mode_blob))
			return FUNC2(state->mode_blob);

		FUNC4(&state->mode, mode);
		state->enable = true;
		FUNC0("Set [MODE:%s] for [CRTC:%d:%s] state %p\n",
				 mode->name, crtc->base.id, crtc->name, state);
	} else {
		FUNC8(&state->mode, 0, sizeof(state->mode));
		state->enable = false;
		FUNC0("Set [NOMODE] for [CRTC:%d:%s] state %p\n",
				 crtc->base.id, crtc->name, state);
	}

	return 0;
}