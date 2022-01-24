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
typedef  int u32 ;
struct radeon_fbdev {struct radeon_device* rdev; } ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; } ;
struct radeon_bo {int dummy; } ;
struct drm_mode_fb_cmd2 {int height; int* pitches; int /*<<< orphan*/  width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_format_info {int* cpp; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ CHIP_R600 ; 
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_TILING_MACRO ; 
 int RADEON_TILING_SURFACE ; 
 int RADEON_TILING_SWAP_16BIT ; 
 int RADEON_TILING_SWAP_32BIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct drm_format_info* FUNC3 (int /*<<< orphan*/ ,struct drm_mode_fb_cmd2*) ; 
 struct radeon_bo* FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_bo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct radeon_bo*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct radeon_bo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct radeon_bo*,int) ; 
 int FUNC11 (struct radeon_bo*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_bo*) ; 
 int FUNC13 (struct radeon_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct drm_gem_object**) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_gem_object*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct radeon_fbdev *rfbdev,
					 struct drm_mode_fb_cmd2 *mode_cmd,
					 struct drm_gem_object **gobj_p)
{
	const struct drm_format_info *info;
	struct radeon_device *rdev = rfbdev->rdev;
	struct drm_gem_object *gobj = NULL;
	struct radeon_bo *rbo = NULL;
	bool fb_tiled = false; /* useful for testing */
	u32 tiling_flags = 0;
	int ret;
	int aligned_size, size;
	int height = mode_cmd->height;
	u32 cpp;

	info = FUNC3(rdev->ddev, mode_cmd);
	cpp = info->cpp[0];

	/* need to align pitch with crtc limits */
	mode_cmd->pitches[0] = FUNC6(rdev, mode_cmd->width, cpp,
						  fb_tiled);

	if (rdev->family >= CHIP_R600)
		height = FUNC0(mode_cmd->height, 8);
	size = mode_cmd->pitches[0] * height;
	aligned_size = FUNC0(size, PAGE_SIZE);
	ret = FUNC13(rdev, aligned_size, 0,
				       RADEON_GEM_DOMAIN_VRAM,
				       0, true, &gobj);
	if (ret) {
		FUNC5("failed to allocate framebuffer (%d)\n", aligned_size);
		return -ENOMEM;
	}
	rbo = FUNC4(gobj);

	if (fb_tiled)
		tiling_flags = RADEON_TILING_MACRO;

#ifdef __BIG_ENDIAN
	switch (cpp) {
	case 4:
		tiling_flags |= RADEON_TILING_SWAP_32BIT;
		break;
	case 2:
		tiling_flags |= RADEON_TILING_SWAP_16BIT;
	default:
		break;
	}
#endif

	if (tiling_flags) {
		ret = FUNC11(rbo,
						 tiling_flags | RADEON_TILING_SURFACE,
						 mode_cmd->pitches[0]);
		if (ret)
			FUNC2(rdev->dev, "FB failed to set tiling flags\n");
	}


	ret = FUNC10(rbo, false);
	if (FUNC15(ret != 0))
		goto out_unref;
	/* Only 27 bit offset for legacy CRTC */
	ret = FUNC9(rbo, RADEON_GEM_DOMAIN_VRAM,
				       FUNC1(rdev) ? 0 : 1 << 27,
				       NULL);
	if (ret) {
		FUNC12(rbo);
		goto out_unref;
	}
	if (fb_tiled)
		FUNC7(rbo, 0, 0);
	ret = FUNC8(rbo, NULL);
	FUNC12(rbo);
	if (ret) {
		goto out_unref;
	}

	*gobj_p = gobj;
	return 0;
out_unref:
	FUNC14(gobj);
	*gobj_p = NULL;
	return ret;
}