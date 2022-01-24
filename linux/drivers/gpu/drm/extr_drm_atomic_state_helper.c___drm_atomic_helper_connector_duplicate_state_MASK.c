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
struct drm_connector_state {int /*<<< orphan*/ * writeback_job; scalar_t__ hdr_output_metadata; int /*<<< orphan*/ * commit; scalar_t__ crtc; } ;
struct drm_connector {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector_state*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct drm_connector *connector,
					    struct drm_connector_state *state)
{
	FUNC2(state, connector->state, sizeof(*state));
	if (state->crtc)
		FUNC0(connector);
	state->commit = NULL;

	if (state->hdr_output_metadata)
		FUNC1(state->hdr_output_metadata);

	/* Don't copy over a writeback job, they are used only once */
	state->writeback_job = NULL;
}