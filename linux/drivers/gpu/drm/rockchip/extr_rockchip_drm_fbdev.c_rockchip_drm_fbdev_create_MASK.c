#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  size; } ;
struct TYPE_9__ {int /*<<< orphan*/  smem_len; } ;
struct TYPE_7__ {unsigned int xoffset; unsigned long yoffset; } ;
struct rockchip_gem_object {unsigned long* pitches; TYPE_5__ base; scalar_t__ kvaddr; TYPE_4__* format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_3__ fix; int /*<<< orphan*/  screen_size; scalar_t__ screen_base; TYPE_1__ var; int /*<<< orphan*/ * fbops; } ;
struct rockchip_drm_private {TYPE_5__* fbdev_bo; } ;
struct fb_info {unsigned long* pitches; TYPE_5__ base; scalar_t__ kvaddr; TYPE_4__* format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_3__ fix; int /*<<< orphan*/  screen_size; scalar_t__ screen_base; TYPE_1__ var; int /*<<< orphan*/ * fbops; } ;
struct drm_mode_fb_cmd2 {unsigned int width; size_t height; unsigned int* pitches; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  member_0; } ;
struct drm_framebuffer {unsigned long* pitches; TYPE_5__ base; scalar_t__ kvaddr; TYPE_4__* format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_3__ fix; int /*<<< orphan*/  screen_size; scalar_t__ screen_base; TYPE_1__ var; int /*<<< orphan*/ * fbops; } ;
struct drm_fb_helper_surface_size {unsigned int surface_width; size_t surface_height; int /*<<< orphan*/  surface_depth; int /*<<< orphan*/  surface_bpp; } ;
struct drm_fb_helper {struct rockchip_gem_object* fb; struct drm_device* dev; } ;
struct TYPE_8__ {scalar_t__ fb_base; } ;
struct drm_device {TYPE_2__ mode_config; int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC3 (struct rockchip_gem_object*) ; 
 int FUNC4 (struct rockchip_gem_object*) ; 
 struct rockchip_gem_object* FUNC5 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC6 (struct rockchip_gem_object*,struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rockchip_drm_fbdev_ops ; 
 struct rockchip_gem_object* FUNC8 (struct drm_device*,struct drm_mode_fb_cmd2*,TYPE_5__*) ; 
 struct rockchip_gem_object* FUNC9 (struct drm_device*,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 struct rockchip_drm_private* FUNC11 (struct drm_fb_helper*) ; 

__attribute__((used)) static int FUNC12(struct drm_fb_helper *helper,
				     struct drm_fb_helper_surface_size *sizes)
{
	struct rockchip_drm_private *private = FUNC11(helper);
	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
	struct drm_device *dev = helper->dev;
	struct rockchip_gem_object *rk_obj;
	struct drm_framebuffer *fb;
	unsigned int bytes_per_pixel;
	unsigned long offset;
	struct fb_info *fbi;
	size_t size;
	int ret;

	bytes_per_pixel = FUNC0(sizes->surface_bpp, 8);

	mode_cmd.width = sizes->surface_width;
	mode_cmd.height = sizes->surface_height;
	mode_cmd.pitches[0] = sizes->surface_width * bytes_per_pixel;
	mode_cmd.pixel_format = FUNC7(sizes->surface_bpp,
		sizes->surface_depth);

	size = mode_cmd.pitches[0] * mode_cmd.height;

	rk_obj = FUNC9(dev, size, true);
	if (FUNC3(rk_obj))
		return -ENOMEM;

	private->fbdev_bo = &rk_obj->base;

	fbi = FUNC5(helper);
	if (FUNC3(fbi)) {
		FUNC2(dev->dev, "Failed to create framebuffer info.\n");
		ret = FUNC4(fbi);
		goto out;
	}

	helper->fb = FUNC8(dev, &mode_cmd,
						   private->fbdev_bo);
	if (FUNC3(helper->fb)) {
		FUNC2(dev->dev,
			      "Failed to allocate DRM framebuffer.\n");
		ret = FUNC4(helper->fb);
		goto out;
	}

	fbi->fbops = &rockchip_drm_fbdev_ops;

	fb = helper->fb;
	FUNC6(fbi, helper, sizes);

	offset = fbi->var.xoffset * bytes_per_pixel;
	offset += fbi->var.yoffset * fb->pitches[0];

	dev->mode_config.fb_base = 0;
	fbi->screen_base = rk_obj->kvaddr + offset;
	fbi->screen_size = rk_obj->base.size;
	fbi->fix.smem_len = rk_obj->base.size;

	FUNC1("FB [%dx%d]-%d kvaddr=%p offset=%ld size=%zu\n",
		      fb->width, fb->height, fb->format->depth,
		      rk_obj->kvaddr,
		      offset, size);

	return 0;

out:
	FUNC10(&rk_obj->base);
	return ret;
}