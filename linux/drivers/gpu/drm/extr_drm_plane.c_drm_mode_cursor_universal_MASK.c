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
struct drm_plane {struct drm_framebuffer* fb; TYPE_1__* state; struct drm_crtc* crtc; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_fb_cmd2 {int /*<<< orphan*/  handles; int /*<<< orphan*/  pitches; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_mode_cursor2 {int flags; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  hot_y; int /*<<< orphan*/  hot_x; scalar_t__ handle; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_framebuffer {int width; int height; int /*<<< orphan*/  hot_y; int /*<<< orphan*/  hot_x; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  cursor_y; int /*<<< orphan*/  cursor_x; struct drm_plane* cursor; struct drm_device* dev; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_FORMAT_ARGB8888 ; 
 int DRM_MODE_CURSOR_BO ; 
 int DRM_MODE_CURSOR_MOVE ; 
 scalar_t__ FUNC2 (struct drm_framebuffer*) ; 
 int FUNC3 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct drm_modeset_acquire_ctx*) ; 
 int FUNC6 (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct drm_modeset_acquire_ctx*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_framebuffer*) ; 
 struct drm_framebuffer* FUNC10 (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_file*) ; 

__attribute__((used)) static int FUNC11(struct drm_crtc *crtc,
				     struct drm_mode_cursor2 *req,
				     struct drm_file *file_priv,
				     struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_device *dev = crtc->dev;
	struct drm_plane *plane = crtc->cursor;
	struct drm_framebuffer *fb = NULL;
	struct drm_mode_fb_cmd2 fbreq = {
		.width = req->width,
		.height = req->height,
		.pixel_format = DRM_FORMAT_ARGB8888,
		.pitches = req->width * 4 ,
		.handles = req->handle ,
	};
	int32_t crtc_x, crtc_y;
	uint32_t crtc_w = 0, crtc_h = 0;
	uint32_t src_w = 0, src_h = 0;
	int ret = 0;

	FUNC0(!plane);
	FUNC4(plane->crtc != crtc && plane->crtc != NULL);

	/*
	 * Obtain fb we'll be using (either new or existing) and take an extra
	 * reference to it if fb != null.  setplane will take care of dropping
	 * the reference if the plane update fails.
	 */
	if (req->flags & DRM_MODE_CURSOR_BO) {
		if (req->handle) {
			fb = FUNC10(dev, &fbreq, file_priv);
			if (FUNC2(fb)) {
				FUNC1("failed to wrap cursor buffer in drm framebuffer\n");
				return FUNC3(fb);
			}

			fb->hot_x = req->hot_x;
			fb->hot_y = req->hot_y;
		} else {
			fb = NULL;
		}
	} else {
		if (plane->state)
			fb = plane->state->fb;
		else
			fb = plane->fb;

		if (fb)
			FUNC8(fb);
	}

	if (req->flags & DRM_MODE_CURSOR_MOVE) {
		crtc_x = req->x;
		crtc_y = req->y;
	} else {
		crtc_x = crtc->cursor_x;
		crtc_y = crtc->cursor_y;
	}

	if (fb) {
		crtc_w = fb->width;
		crtc_h = fb->height;
		src_w = fb->width << 16;
		src_h = fb->height << 16;
	}

	if (FUNC7(dev))
		ret = FUNC5(plane, crtc, fb,
					crtc_x, crtc_y, crtc_w, crtc_h,
					0, 0, src_w, src_h, ctx);
	else
		ret = FUNC6(plane, crtc, fb,
					  crtc_x, crtc_y, crtc_w, crtc_h,
					  0, 0, src_w, src_h, ctx);

	if (fb)
		FUNC9(fb);

	/* Update successful; save new cursor position, if necessary */
	if (ret == 0 && req->flags & DRM_MODE_CURSOR_MOVE) {
		crtc->cursor_x = req->x;
		crtc->cursor_y = req->y;
	}

	return ret;
}