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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_plane {int /*<<< orphan*/  dev; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {struct drm_plane* primary; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct drm_atomic_state*) ; 
 struct drm_atomic_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_atomic_state*) ; 
 int FUNC3 (struct drm_atomic_state*,struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_crtc *crtc,
				struct drm_framebuffer *fb,
				struct drm_pending_vblank_event *event,
				uint32_t flags,
				struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_plane *plane = crtc->primary;
	struct drm_atomic_state *state;
	int ret = 0;

	state = FUNC1(plane->dev);
	if (!state)
		return -ENOMEM;

	state->acquire_ctx = ctx;

	ret = FUNC3(state, crtc, fb, event, flags);
	if (ret != 0)
		goto fail;

	ret = FUNC0(state);
fail:
	FUNC2(state);
	return ret;
}