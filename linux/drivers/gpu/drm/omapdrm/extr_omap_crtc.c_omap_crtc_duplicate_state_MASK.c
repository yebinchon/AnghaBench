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
struct drm_crtc_state {int dummy; } ;
struct omap_crtc_state {struct drm_crtc_state base; int /*<<< orphan*/  manually_updated; int /*<<< orphan*/  rotation; int /*<<< orphan*/  zpos; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct omap_crtc_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct omap_crtc_state* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *
FUNC4(struct drm_crtc *crtc)
{
	struct omap_crtc_state *state, *current_state;

	if (FUNC0(!crtc->state))
		return NULL;

	current_state = FUNC3(crtc->state);

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (!state)
		return NULL;

	FUNC1(crtc, &state->base);

	state->zpos = current_state->zpos;
	state->rotation = current_state->rotation;
	state->manually_updated = current_state->manually_updated;

	return &state->base;
}