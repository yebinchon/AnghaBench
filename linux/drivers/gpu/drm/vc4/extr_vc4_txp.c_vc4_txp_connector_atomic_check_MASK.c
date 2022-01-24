#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_framebuffer {scalar_t__ width; scalar_t__ height; int* pitches; TYPE_3__* format; } ;
struct TYPE_5__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_crtc_state {TYPE_2__ mode; } ;
struct drm_connector_state {TYPE_1__* writeback_job; int /*<<< orphan*/  crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_6__ {scalar_t__ format; } ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct drm_connector_state* FUNC3 (struct drm_atomic_state*,struct drm_connector*) ; 
 struct drm_crtc_state* FUNC4 (struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 scalar_t__* drm_fmts ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc_state*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *conn,
					  struct drm_atomic_state *state)
{
	struct drm_connector_state *conn_state;
	struct drm_crtc_state *crtc_state;
	struct drm_framebuffer *fb;
	int i;

	conn_state = FUNC3(state, conn);
	if (!conn_state->writeback_job)
		return 0;

	crtc_state = FUNC4(state, conn_state->crtc);

	fb = conn_state->writeback_job->fb;
	if (fb->width != crtc_state->mode.hdisplay ||
	    fb->height != crtc_state->mode.vdisplay) {
		FUNC1("Invalid framebuffer size %ux%u\n",
			      fb->width, fb->height);
		return -EINVAL;
	}

	for (i = 0; i < FUNC0(drm_fmts); i++) {
		if (fb->format->format == drm_fmts[i])
			break;
	}

	if (i == FUNC0(drm_fmts))
		return -EINVAL;

	/* Pitch must be aligned on 16 bytes. */
	if (fb->pitches[0] & FUNC2(3, 0))
		return -EINVAL;

	FUNC5(crtc_state);

	return 0;
}