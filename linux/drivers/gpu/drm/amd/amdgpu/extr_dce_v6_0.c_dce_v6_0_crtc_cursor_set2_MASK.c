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
typedef  scalar_t__ uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct amdgpu_crtc {scalar_t__ max_cursor_width; scalar_t__ max_cursor_height; scalar_t__ cursor_width; scalar_t__ cursor_height; scalar_t__ cursor_hot_x; scalar_t__ cursor_hot_y; scalar_t__ cursor_x; scalar_t__ cursor_y; struct drm_gem_object* cursor_bo; int /*<<< orphan*/  cursor_addr; int /*<<< orphan*/  crtc_id; } ;
struct amdgpu_bo {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*) ; 
 int FUNC2 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*) ; 
 struct drm_gem_object* FUNC10 (struct drm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_gem_object*) ; 
 struct amdgpu_bo* FUNC12 (struct drm_gem_object*) ; 
 scalar_t__ FUNC13 (int) ; 
 struct amdgpu_crtc* FUNC14 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC15(struct drm_crtc *crtc,
				     struct drm_file *file_priv,
				     uint32_t handle,
				     uint32_t width,
				     uint32_t height,
				     int32_t hot_x,
				     int32_t hot_y)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC14(crtc);
	struct drm_gem_object *obj;
	struct amdgpu_bo *aobj;
	int ret;

	if (!handle) {
		/* turn off cursor */
		FUNC7(crtc);
		obj = NULL;
		goto unpin;
	}

	if ((width > amdgpu_crtc->max_cursor_width) ||
	    (height > amdgpu_crtc->max_cursor_height)) {
		FUNC0("bad cursor width or height %d x %d\n", width, height);
		return -EINVAL;
	}

	obj = FUNC10(file_priv, handle);
	if (!obj) {
		FUNC0("Cannot find cursor object %x for crtc %d\n", handle, amdgpu_crtc->crtc_id);
		return -ENOENT;
	}

	aobj = FUNC12(obj);
	ret = FUNC3(aobj, false);
	if (ret != 0) {
		FUNC11(obj);
		return ret;
	}

	ret = FUNC2(aobj, AMDGPU_GEM_DOMAIN_VRAM);
	FUNC5(aobj);
	if (ret) {
		FUNC0("Failed to pin new cursor BO (%d)\n", ret);
		FUNC11(obj);
		return ret;
	}
	amdgpu_crtc->cursor_addr = FUNC1(aobj);

	FUNC8(crtc, true);

	if (width != amdgpu_crtc->cursor_width ||
	    height != amdgpu_crtc->cursor_height ||
	    hot_x != amdgpu_crtc->cursor_hot_x ||
	    hot_y != amdgpu_crtc->cursor_hot_y) {
		int x, y;

		x = amdgpu_crtc->cursor_x + amdgpu_crtc->cursor_hot_x - hot_x;
		y = amdgpu_crtc->cursor_y + amdgpu_crtc->cursor_hot_y - hot_y;

		FUNC6(crtc, x, y);

		amdgpu_crtc->cursor_width = width;
		amdgpu_crtc->cursor_height = height;
		amdgpu_crtc->cursor_hot_x = hot_x;
		amdgpu_crtc->cursor_hot_y = hot_y;
	}

	FUNC9(crtc);
	FUNC8(crtc, false);

unpin:
	if (amdgpu_crtc->cursor_bo) {
		struct amdgpu_bo *aobj = FUNC12(amdgpu_crtc->cursor_bo);
		ret = FUNC3(aobj, true);
		if (FUNC13(ret == 0)) {
			FUNC4(aobj);
			FUNC5(aobj);
		}
		FUNC11(amdgpu_crtc->cursor_bo);
	}

	amdgpu_crtc->cursor_bo = obj;
	return 0;
}