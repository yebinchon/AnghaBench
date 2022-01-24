#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct msm_fbdev {struct fb_info* fb; } ;
struct msm_drm_private {TYPE_1__* kms; } ;
struct TYPE_8__ {int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct TYPE_7__ {int /*<<< orphan*/  smem_len; void* smem_start; } ;
struct fb_info {struct drm_device* height; struct fb_info* width; TYPE_4__ var; int /*<<< orphan*/  par; TYPE_3__ fix; int /*<<< orphan*/  screen_size; struct fb_info* screen_base; int /*<<< orphan*/ * fbops; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;
struct drm_framebuffer {struct drm_device* height; struct drm_framebuffer* width; TYPE_4__ var; int /*<<< orphan*/  par; TYPE_3__ fix; int /*<<< orphan*/  screen_size; struct drm_framebuffer* screen_base; int /*<<< orphan*/ * fbops; } ;
struct drm_fb_helper_surface_size {int /*<<< orphan*/  surface_height; int /*<<< orphan*/  surface_width; int /*<<< orphan*/  surface_bpp; int /*<<< orphan*/  fb_height; int /*<<< orphan*/  fb_width; int /*<<< orphan*/  surface_depth; } ;
struct drm_fb_helper {struct fb_info* fb; struct drm_device* dev; } ;
struct TYPE_6__ {void* fb_base; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__ mode_config; int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/  aspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct fb_info*,struct drm_device*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct fb_info*) ; 
 int FUNC3 (struct fb_info*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC5 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*,struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC9 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_fb_ops ; 
 struct drm_gem_object* FUNC10 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct drm_gem_object*,int /*<<< orphan*/ ,void**) ; 
 struct fb_info* FUNC12 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct msm_fbdev* FUNC15 (struct drm_fb_helper*) ; 

__attribute__((used)) static int FUNC16(struct drm_fb_helper *helper,
		struct drm_fb_helper_surface_size *sizes)
{
	struct msm_fbdev *fbdev = FUNC15(helper);
	struct drm_device *dev = helper->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct drm_framebuffer *fb = NULL;
	struct drm_gem_object *bo;
	struct fb_info *fbi = NULL;
	uint64_t paddr;
	uint32_t format;
	int ret, pitch;

	format = FUNC8(sizes->surface_bpp, sizes->surface_depth);

	FUNC0("create fbdev: %dx%d@%d (%dx%d)", sizes->surface_width,
			sizes->surface_height, sizes->surface_bpp,
			sizes->fb_width, sizes->fb_height);

	pitch = FUNC4(sizes->surface_width, sizes->surface_bpp);
	fb = FUNC9(dev, sizes->surface_width,
			sizes->surface_height, pitch, format);

	if (FUNC2(fb)) {
		FUNC1(dev->dev, "failed to allocate fb\n");
		return FUNC3(fb);
	}

	bo = FUNC10(fb, 0);

	FUNC13(&dev->struct_mutex);

	/*
	 * NOTE: if we can be guaranteed to be able to map buffer
	 * in panic (ie. lock-safe, etc) we could avoid pinning the
	 * buffer now:
	 */
	ret = FUNC11(bo, priv->kms->aspace, &paddr);
	if (ret) {
		FUNC1(dev->dev, "failed to get buffer obj iova: %d\n", ret);
		goto fail_unlock;
	}

	fbi = FUNC5(helper);
	if (FUNC2(fbi)) {
		FUNC1(dev->dev, "failed to allocate fb info\n");
		ret = FUNC3(fbi);
		goto fail_unlock;
	}

	FUNC0("fbi=%p, dev=%p", fbi, dev);

	fbdev->fb = fb;
	helper->fb = fb;

	fbi->fbops = &msm_fb_ops;

	FUNC6(fbi, helper, sizes);

	dev->mode_config.fb_base = paddr;

	fbi->screen_base = FUNC12(bo);
	if (FUNC2(fbi->screen_base)) {
		ret = FUNC3(fbi->screen_base);
		goto fail_unlock;
	}
	fbi->screen_size = bo->size;
	fbi->fix.smem_start = paddr;
	fbi->fix.smem_len = bo->size;

	FUNC0("par=%p, %dx%d", fbi->par, fbi->var.xres, fbi->var.yres);
	FUNC0("allocated %dx%d fb", fbdev->fb->width, fbdev->fb->height);

	FUNC14(&dev->struct_mutex);

	return 0;

fail_unlock:
	FUNC14(&dev->struct_mutex);
	FUNC7(fb);
	return ret;
}