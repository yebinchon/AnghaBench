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
typedef  void* uint32_t ;
struct drm_plane_state {int crtc_x; int crtc_y; unsigned int crtc_w; unsigned int crtc_h; void* src_h; void* src_w; void* src_y; void* src_x; } ;
struct drm_plane {int /*<<< orphan*/  dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {struct drm_plane* cursor; } ;
struct drm_atomic_state {int legacy_cursor_update; struct drm_modeset_acquire_ctx* acquire_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct drm_plane_state*) ; 
 int FUNC1 (struct drm_plane_state*) ; 
 int FUNC2 (struct drm_atomic_state*) ; 
 struct drm_plane_state* FUNC3 (struct drm_atomic_state*,struct drm_plane*) ; 
 int FUNC4 (struct drm_plane_state*,struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_plane_state*,struct drm_framebuffer*) ; 
 struct drm_atomic_state* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_atomic_state*) ; 

int FUNC8(struct drm_plane *plane,
				   struct drm_crtc *crtc,
				   struct drm_framebuffer *fb,
				   int crtc_x, int crtc_y,
				   unsigned int crtc_w, unsigned int crtc_h,
				   uint32_t src_x, uint32_t src_y,
				   uint32_t src_w, uint32_t src_h,
				   struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_atomic_state *state;
	struct drm_plane_state *plane_state;
	int ret = 0;

	state = FUNC6(plane->dev);
	if (!state)
		return -ENOMEM;

	state->acquire_ctx = ctx;
	plane_state = FUNC3(state, plane);
	if (FUNC0(plane_state)) {
		ret = FUNC1(plane_state);
		goto fail;
	}

	ret = FUNC4(plane_state, crtc);
	if (ret != 0)
		goto fail;
	FUNC5(plane_state, fb);
	plane_state->crtc_x = crtc_x;
	plane_state->crtc_y = crtc_y;
	plane_state->crtc_w = crtc_w;
	plane_state->crtc_h = crtc_h;
	plane_state->src_x = src_x;
	plane_state->src_y = src_y;
	plane_state->src_w = src_w;
	plane_state->src_h = src_h;

	if (plane == crtc->cursor)
		state->legacy_cursor_update = true;

	ret = FUNC2(state);
fail:
	FUNC7(state);
	return ret;
}