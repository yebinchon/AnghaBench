#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned long smem_start; void* smem_len; } ;
struct fb_info {TYPE_4__ fix; int /*<<< orphan*/ * screen_base; TYPE_3__* apertures; void* screen_size; int /*<<< orphan*/ * fbops; } ;
struct drm_mode_fb_cmd2 {int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {unsigned long* pitches; TYPE_6__* format; } ;
struct drm_fb_helper_surface_size {int surface_bpp; int /*<<< orphan*/  surface_depth; int /*<<< orphan*/  surface_height; int /*<<< orphan*/  surface_width; } ;
struct drm_fb_helper {int dummy; } ;
struct TYPE_16__ {struct drm_framebuffer* fb; } ;
struct TYPE_18__ {struct drm_framebuffer base; } ;
struct amdgpu_fbdev {TYPE_7__ helper; TYPE_9__ rfb; struct amdgpu_device* adev; } ;
struct TYPE_14__ {unsigned long vram_start; unsigned long aper_base; int /*<<< orphan*/  aper_size; } ;
struct amdgpu_device {TYPE_8__* ddev; TYPE_5__ gmc; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  fb_base; } ;
struct TYPE_17__ {int /*<<< orphan*/  pdev; TYPE_1__ mode_config; } ;
struct TYPE_15__ {unsigned long depth; } ;
struct TYPE_12__ {TYPE_2__* ranges; } ;
struct TYPE_11__ {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int ENOSPC ; 
 scalar_t__ FUNC2 (struct fb_info*) ; 
 int FUNC3 (struct fb_info*) ; 
 unsigned long FUNC4 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/ * FUNC5 (struct amdgpu_bo*) ; 
 void* FUNC6 (struct amdgpu_bo*) ; 
 int FUNC7 (TYPE_8__*,TYPE_9__*,struct drm_mode_fb_cmd2*,struct drm_gem_object*) ; 
 int FUNC8 (struct amdgpu_fbdev*,struct drm_mode_fb_cmd2*,struct drm_gem_object**) ; 
 int /*<<< orphan*/  amdgpufb_ops ; 
 struct fb_info* FUNC9 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*,TYPE_7__*,struct drm_fb_helper_surface_size*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 struct amdgpu_bo* FUNC15 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct fb_info*) ; 

__attribute__((used)) static int FUNC18(struct drm_fb_helper *helper,
			   struct drm_fb_helper_surface_size *sizes)
{
	struct amdgpu_fbdev *rfbdev = (struct amdgpu_fbdev *)helper;
	struct amdgpu_device *adev = rfbdev->adev;
	struct fb_info *info;
	struct drm_framebuffer *fb = NULL;
	struct drm_mode_fb_cmd2 mode_cmd;
	struct drm_gem_object *gobj = NULL;
	struct amdgpu_bo *abo = NULL;
	int ret;
	unsigned long tmp;

	mode_cmd.width = sizes->surface_width;
	mode_cmd.height = sizes->surface_height;

	if (sizes->surface_bpp == 24)
		sizes->surface_bpp = 32;

	mode_cmd.pixel_format = FUNC14(sizes->surface_bpp,
							  sizes->surface_depth);

	ret = FUNC8(rfbdev, &mode_cmd, &gobj);
	if (ret) {
		FUNC0("failed to create fbcon object %d\n", ret);
		return ret;
	}

	abo = FUNC15(gobj);

	/* okay we have an object now allocate the framebuffer */
	info = FUNC9(helper);
	if (FUNC2(info)) {
		ret = FUNC3(info);
		goto out;
	}

	ret = FUNC7(adev->ddev, &rfbdev->rfb,
					      &mode_cmd, gobj);
	if (ret) {
		FUNC0("failed to initialize framebuffer %d\n", ret);
		goto out;
	}

	fb = &rfbdev->rfb.base;

	/* setup helper */
	rfbdev->helper.fb = fb;

	info->fbops = &amdgpufb_ops;

	tmp = FUNC4(abo) - adev->gmc.vram_start;
	info->fix.smem_start = adev->gmc.aper_base + tmp;
	info->fix.smem_len = FUNC6(abo);
	info->screen_base = FUNC5(abo);
	info->screen_size = FUNC6(abo);

	FUNC10(info, &rfbdev->helper, sizes);

	/* setup aperture base/size for vesafb takeover */
	info->apertures->ranges[0].base = adev->ddev->mode_config.fb_base;
	info->apertures->ranges[0].size = adev->gmc.aper_size;

	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */

	if (info->screen_base == NULL) {
		ret = -ENOSPC;
		goto out;
	}

	FUNC1("fb mappable at 0x%lX\n",  info->fix.smem_start);
	FUNC1("vram apper at 0x%lX\n",  (unsigned long)adev->gmc.aper_base);
	FUNC1("size %lu\n", (unsigned long)FUNC6(abo));
	FUNC1("fb depth is %d\n", fb->format->depth);
	FUNC1("   pitch is %d\n", fb->pitches[0]);

	FUNC17(adev->ddev->pdev, info);
	return 0;

out:
	if (abo) {

	}
	if (fb && ret) {
		FUNC13(gobj);
		FUNC12(fb);
		FUNC11(fb);
		FUNC16(fb);
	}
	return ret;
}