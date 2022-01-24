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
struct drm_rect {int /*<<< orphan*/  y2; int /*<<< orphan*/  x2; } ;
struct drm_plane_state {unsigned int rotation; scalar_t__ crtc; int visible; struct drm_rect dst; struct drm_rect src; struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int width; int height; } ;
struct drm_crtc_state {scalar_t__ crtc; int /*<<< orphan*/  mode; scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_rect FUNC3 (struct drm_plane_state*) ; 
 struct drm_rect FUNC4 (struct drm_plane_state*) ; 
 int FUNC5 (struct drm_rect*,struct drm_rect*,int,int) ; 
 int FUNC6 (struct drm_rect*,struct drm_rect*,int,int) ; 
 int FUNC7 (struct drm_rect*,struct drm_rect*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct drm_rect*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_rect*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_rect*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_rect*,int,int,unsigned int) ; 

int FUNC12(struct drm_plane_state *plane_state,
					const struct drm_crtc_state *crtc_state,
					int min_scale,
					int max_scale,
					bool can_position,
					bool can_update_disabled)
{
	struct drm_framebuffer *fb = plane_state->fb;
	struct drm_rect *src = &plane_state->src;
	struct drm_rect *dst = &plane_state->dst;
	unsigned int rotation = plane_state->rotation;
	struct drm_rect clip = {};
	int hscale, vscale;

	FUNC1(plane_state->crtc && plane_state->crtc != crtc_state->crtc);

	*src = FUNC4(plane_state);
	*dst = FUNC3(plane_state);

	if (!fb) {
		plane_state->visible = false;
		return 0;
	}

	/* crtc should only be NULL when disabling (i.e., !fb) */
	if (FUNC1(!plane_state->crtc)) {
		plane_state->visible = false;
		return 0;
	}

	if (!crtc_state->enable && !can_update_disabled) {
		FUNC0("Cannot update plane of a disabled CRTC.\n");
		return -EINVAL;
	}

	FUNC10(src, fb->width << 16, fb->height << 16, rotation);

	/* Check scaling */
	hscale = FUNC5(src, dst, min_scale, max_scale);
	vscale = FUNC6(src, dst, min_scale, max_scale);
	if (hscale < 0 || vscale < 0) {
		FUNC0("Invalid scaling of plane\n");
		FUNC8("src: ", &plane_state->src, true);
		FUNC8("dst: ", &plane_state->dst, false);
		return -ERANGE;
	}

	if (crtc_state->enable)
		FUNC2(&crtc_state->mode, &clip.x2, &clip.y2);

	plane_state->visible = FUNC7(src, dst, &clip);

	FUNC11(src, fb->width << 16, fb->height << 16, rotation);

	if (!plane_state->visible)
		/*
		 * Plane isn't visible; some drivers can handle this
		 * so we just return success here.  Drivers that can't
		 * (including those that use the primary plane helper's
		 * update function) will return an error from their
		 * update_plane handler.
		 */
		return 0;

	if (!can_position && !FUNC9(dst, &clip)) {
		FUNC0("Plane must cover entire CRTC\n");
		FUNC8("dst: ", dst, false);
		FUNC8("clip: ", &clip, false);
		return -EINVAL;
	}

	return 0;
}