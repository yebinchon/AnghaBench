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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_plane {struct drm_framebuffer* old_fb; struct drm_framebuffer* fb; struct drm_crtc* crtc; TYPE_1__* funcs; int /*<<< orphan*/  dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int (* disable_plane ) (struct drm_plane*,struct drm_modeset_acquire_ctx*) ;int (* update_plane ) (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_modeset_acquire_ctx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 
 int FUNC5 (struct drm_plane*,struct drm_modeset_acquire_ctx*) ; 
 int FUNC6 (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_modeset_acquire_ctx*) ; 

__attribute__((used)) static int FUNC7(struct drm_plane *plane,
			       struct drm_crtc *crtc,
			       struct drm_framebuffer *fb,
			       int32_t crtc_x, int32_t crtc_y,
			       uint32_t crtc_w, uint32_t crtc_h,
			       /* src_{x,y,w,h} values are 16.16 fixed point */
			       uint32_t src_x, uint32_t src_y,
			       uint32_t src_w, uint32_t src_h,
			       struct drm_modeset_acquire_ctx *ctx)
{
	int ret = 0;

	FUNC0(FUNC2(plane->dev));

	/* No fb means shut it down */
	if (!fb) {
		plane->old_fb = plane->fb;
		ret = plane->funcs->disable_plane(plane, ctx);
		if (!ret) {
			plane->crtc = NULL;
			plane->fb = NULL;
		} else {
			plane->old_fb = NULL;
		}
		goto out;
	}

	ret = FUNC1(plane, crtc, fb,
			       crtc_x, crtc_y, crtc_w, crtc_h,
			       src_x, src_y, src_w, src_h);
	if (ret)
		goto out;

	plane->old_fb = plane->fb;
	ret = plane->funcs->update_plane(plane, crtc, fb,
					 crtc_x, crtc_y, crtc_w, crtc_h,
					 src_x, src_y, src_w, src_h, ctx);
	if (!ret) {
		plane->crtc = crtc;
		plane->fb = fb;
		FUNC3(plane->fb);
	} else {
		plane->old_fb = NULL;
	}

out:
	if (plane->old_fb)
		FUNC4(plane->old_fb);
	plane->old_fb = NULL;

	return ret;
}