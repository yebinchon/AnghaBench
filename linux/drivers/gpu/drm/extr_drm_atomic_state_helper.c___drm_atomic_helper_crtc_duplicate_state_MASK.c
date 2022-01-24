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
struct drm_crtc_state {int mode_changed; int active_changed; int planes_changed; int connectors_changed; int color_mgmt_changed; int zpos_changed; int async_flip; int self_refresh_active; int /*<<< orphan*/  active; int /*<<< orphan*/ * event; int /*<<< orphan*/ * commit; scalar_t__ gamma_lut; scalar_t__ ctm; scalar_t__ degamma_lut; scalar_t__ mode_blob; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc_state*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct drm_crtc *crtc,
					      struct drm_crtc_state *state)
{
	FUNC2(state, crtc->state, sizeof(*state));

	if (state->mode_blob)
		FUNC1(state->mode_blob);
	if (state->degamma_lut)
		FUNC1(state->degamma_lut);
	if (state->ctm)
		FUNC1(state->ctm);
	if (state->gamma_lut)
		FUNC1(state->gamma_lut);
	state->mode_changed = false;
	state->active_changed = false;
	state->planes_changed = false;
	state->connectors_changed = false;
	state->color_mgmt_changed = false;
	state->zpos_changed = false;
	state->commit = NULL;
	state->event = NULL;
	state->async_flip = false;

	/* Self refresh should be canceled when a new update is available */
	state->active = FUNC0(state);
	state->self_refresh_active = false;
}