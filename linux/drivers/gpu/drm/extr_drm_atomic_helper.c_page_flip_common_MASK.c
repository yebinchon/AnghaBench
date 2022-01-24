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
typedef  int uint32_t ;
struct drm_plane_state {int async_flip; int /*<<< orphan*/  active; struct drm_pending_vblank_event* event; } ;
struct drm_plane {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int async_flip; int /*<<< orphan*/  active; struct drm_pending_vblank_event* event; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {int /*<<< orphan*/  name; TYPE_1__ base; struct drm_plane* primary; } ;
struct drm_atomic_state {int allow_modeset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DRM_MODE_PAGE_FLIP_ASYNC ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct drm_plane_state*) ; 
 int FUNC2 (struct drm_plane_state*) ; 
 struct drm_plane_state* FUNC3 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_plane_state* FUNC4 (struct drm_atomic_state*,struct drm_plane*) ; 
 int FUNC5 (struct drm_plane_state*,struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_plane_state*,struct drm_framebuffer*) ; 

__attribute__((used)) static int FUNC7(struct drm_atomic_state *state,
			    struct drm_crtc *crtc,
			    struct drm_framebuffer *fb,
			    struct drm_pending_vblank_event *event,
			    uint32_t flags)
{
	struct drm_plane *plane = crtc->primary;
	struct drm_plane_state *plane_state;
	struct drm_crtc_state *crtc_state;
	int ret = 0;

	crtc_state = FUNC3(state, crtc);
	if (FUNC1(crtc_state))
		return FUNC2(crtc_state);

	crtc_state->event = event;
	crtc_state->async_flip = flags & DRM_MODE_PAGE_FLIP_ASYNC;

	plane_state = FUNC4(state, plane);
	if (FUNC1(plane_state))
		return FUNC2(plane_state);

	ret = FUNC5(plane_state, crtc);
	if (ret != 0)
		return ret;
	FUNC6(plane_state, fb);

	/* Make sure we don't accidentally do a full modeset. */
	state->allow_modeset = false;
	if (!crtc_state->active) {
		FUNC0("[CRTC:%d:%s] disabled, rejecting legacy flip\n",
				 crtc->base.id, crtc->name);
		return -EINVAL;
	}

	return ret;
}