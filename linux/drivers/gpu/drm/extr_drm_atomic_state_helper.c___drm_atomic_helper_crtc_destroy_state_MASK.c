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
struct drm_crtc_state {int /*<<< orphan*/  gamma_lut; int /*<<< orphan*/  ctm; int /*<<< orphan*/  degamma_lut; int /*<<< orphan*/  mode_blob; TYPE_1__* commit; scalar_t__ event; } ;
struct TYPE_2__ {int /*<<< orphan*/ * event; scalar_t__ abort_completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_crtc_state *state)
{
	if (state->commit) {
		/*
		 * In the event that a non-blocking commit returns
		 * -ERESTARTSYS before the commit_tail work is queued, we will
		 * have an extra reference to the commit object. Release it, if
		 * the event has not been consumed by the worker.
		 *
		 * state->event may be freed, so we can't directly look at
		 * state->event->base.completion.
		 */
		if (state->event && state->commit->abort_completion)
			FUNC0(state->commit);

		FUNC2(state->commit->event);
		state->commit->event = NULL;

		FUNC0(state->commit);
	}

	FUNC1(state->mode_blob);
	FUNC1(state->degamma_lut);
	FUNC1(state->ctm);
	FUNC1(state->gamma_lut);
}