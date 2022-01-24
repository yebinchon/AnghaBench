#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* funcs; TYPE_2__* format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_6__ {int /*<<< orphan*/  smem_len; scalar_t__ smem_start; } ;
struct fb_info {TYPE_4__ fb; void* screen_base; int /*<<< orphan*/  screen_size; TYPE_1__ fix; int /*<<< orphan*/ * fbops; } ;
struct drm_mode_fb_cmd2 {int height; int* pitches; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  width; } ;
struct drm_fb_helper_surface_size {int surface_height; int /*<<< orphan*/  surface_depth; int /*<<< orphan*/  surface_bpp; int /*<<< orphan*/  surface_width; } ;
struct drm_fb_helper {TYPE_4__* fb; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; } ;
struct armada_gem_object {scalar_t__ phys_addr; TYPE_5__ obj; } ;
struct armada_framebuffer {TYPE_4__ fb; void* screen_base; int /*<<< orphan*/  screen_size; TYPE_1__ fix; int /*<<< orphan*/ * fbops; } ;
typedef  int /*<<< orphan*/  mode ;
struct TYPE_8__ {int /*<<< orphan*/  (* destroy ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int* cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct fb_info*) ; 
 int FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  armada_fb_ops ; 
 struct fb_info* FUNC4 (struct drm_device*,struct drm_mode_fb_cmd2*,struct armada_gem_object*) ; 
 struct armada_gem_object* FUNC5 (struct drm_device*,int) ; 
 int FUNC6 (struct drm_device*,struct armada_gem_object*) ; 
 void* FUNC7 (struct drm_device*,struct armada_gem_object*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC9 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*,struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_mode_fb_cmd2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC15(struct drm_fb_helper *fbh,
	struct drm_fb_helper_surface_size *sizes)
{
	struct drm_device *dev = fbh->dev;
	struct drm_mode_fb_cmd2 mode;
	struct armada_framebuffer *dfb;
	struct armada_gem_object *obj;
	struct fb_info *info;
	int size, ret;
	void *ptr;

	FUNC13(&mode, 0, sizeof(mode));
	mode.width = sizes->surface_width;
	mode.height = sizes->surface_height;
	mode.pitches[0] = FUNC8(mode.width, sizes->surface_bpp);
	mode.pixel_format = FUNC12(sizes->surface_bpp,
					sizes->surface_depth);

	size = mode.pitches[0] * mode.height;
	obj = FUNC5(dev, size);
	if (!obj) {
		FUNC1("failed to allocate fb memory\n");
		return -ENOMEM;
	}

	ret = FUNC6(dev, obj);
	if (ret) {
		FUNC11(&obj->obj);
		return ret;
	}

	ptr = FUNC7(dev, obj);
	if (!ptr) {
		FUNC11(&obj->obj);
		return -ENOMEM;
	}

	dfb = FUNC4(dev, &mode, obj);

	/*
	 * A reference is now held by the framebuffer object if
	 * successful, otherwise this drops the ref for the error path.
	 */
	FUNC11(&obj->obj);

	if (FUNC2(dfb))
		return FUNC3(dfb);

	info = FUNC9(fbh);
	if (FUNC2(info)) {
		ret = FUNC3(info);
		goto err_fballoc;
	}

	info->fbops = &armada_fb_ops;
	info->fix.smem_start = obj->phys_addr;
	info->fix.smem_len = obj->obj.size;
	info->screen_size = obj->obj.size;
	info->screen_base = ptr;
	fbh->fb = &dfb->fb;

	FUNC10(info, fbh, sizes);

	FUNC0("allocated %dx%d %dbpp fb: 0x%08llx\n",
		dfb->fb.width, dfb->fb.height, dfb->fb.format->cpp[0] * 8,
		(unsigned long long)obj->phys_addr);

	return 0;

 err_fballoc:
	dfb->fb.funcs->destroy(&dfb->fb);
	return ret;
}