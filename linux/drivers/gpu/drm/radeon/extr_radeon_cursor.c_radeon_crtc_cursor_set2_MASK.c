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
typedef  scalar_t__ uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ max_cursor_width; scalar_t__ max_cursor_height; scalar_t__ cursor_width; scalar_t__ cursor_height; scalar_t__ cursor_hot_x; scalar_t__ cursor_hot_y; scalar_t__ cursor_x; scalar_t__ cursor_y; struct drm_gem_object* cursor_bo; int /*<<< orphan*/  cursor_addr; int /*<<< orphan*/  crtc_id; } ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC4 (struct drm_gem_object*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct radeon_bo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_crtc*) ; 
 struct radeon_crtc* FUNC14 (struct drm_crtc*) ; 

int FUNC15(struct drm_crtc *crtc,
			    struct drm_file *file_priv,
			    uint32_t handle,
			    uint32_t width,
			    uint32_t height,
			    int32_t hot_x,
			    int32_t hot_y)
{
	struct radeon_crtc *radeon_crtc = FUNC14(crtc);
	struct radeon_device *rdev = crtc->dev->dev_private;
	struct drm_gem_object *obj;
	struct radeon_bo *robj;
	int ret;

	if (!handle) {
		/* turn off cursor */
		FUNC11(crtc);
		obj = NULL;
		goto unpin;
	}

	if ((width > radeon_crtc->max_cursor_width) ||
	    (height > radeon_crtc->max_cursor_height)) {
		FUNC1("bad cursor width or height %d x %d\n", width, height);
		return -EINVAL;
	}

	obj = FUNC2(file_priv, handle);
	if (!obj) {
		FUNC1("Cannot find cursor object %x for crtc %d\n", handle, radeon_crtc->crtc_id);
		return -ENOENT;
	}

	robj = FUNC4(obj);
	ret = FUNC7(robj, false);
	if (ret != 0) {
		FUNC3(obj);
		return ret;
	}
	/* Only 27 bit offset for legacy cursor */
	ret = FUNC6(robj, RADEON_GEM_DOMAIN_VRAM,
				       FUNC0(rdev) ? 0 : 1 << 27,
				       &radeon_crtc->cursor_addr);
	FUNC9(robj);
	if (ret) {
		FUNC1("Failed to pin new cursor BO (%d)\n", ret);
		FUNC3(obj);
		return ret;
	}

	FUNC12(crtc, true);

	if (width != radeon_crtc->cursor_width ||
	    height != radeon_crtc->cursor_height ||
	    hot_x != radeon_crtc->cursor_hot_x ||
	    hot_y != radeon_crtc->cursor_hot_y) {
		int x, y;

		x = radeon_crtc->cursor_x + radeon_crtc->cursor_hot_x - hot_x;
		y = radeon_crtc->cursor_y + radeon_crtc->cursor_hot_y - hot_y;

		radeon_crtc->cursor_width = width;
		radeon_crtc->cursor_height = height;
		radeon_crtc->cursor_hot_x = hot_x;
		radeon_crtc->cursor_hot_y = hot_y;

		FUNC10(crtc, x, y);
	}

	FUNC13(crtc);

	FUNC12(crtc, false);

unpin:
	if (radeon_crtc->cursor_bo) {
		struct radeon_bo *robj = FUNC4(radeon_crtc->cursor_bo);
		ret = FUNC7(robj, false);
		if (FUNC5(ret == 0)) {
			FUNC8(robj);
			FUNC9(robj);
		}
		FUNC3(radeon_crtc->cursor_bo);
	}

	radeon_crtc->cursor_bo = obj;
	return 0;
}