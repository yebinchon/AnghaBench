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
struct drm_plane_state {TYPE_2__* crtc; int /*<<< orphan*/  fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_plane *plane,
				       struct drm_plane_state *old_state)
{
	struct drm_plane_state *state = plane->state;

	if (!state->crtc)
		return;

	if (FUNC0(!state->fb || !state->crtc->state))
		return;

	FUNC1(state->crtc,
			      state->fb,
			      state->crtc->state->event);
}