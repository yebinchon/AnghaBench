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
typedef  int /*<<< orphan*/  u32 ;
struct ttm_bo_device {int dummy; } ;
struct drm_mode_create_dumb {int width; int bpp; size_t height; size_t pitch; size_t size; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct drm_gem_vram_object {TYPE_1__ bo; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_gem_vram_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_gem_vram_object*) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_gem_vram_object* FUNC4 (struct drm_device*,struct ttm_bo_device*,size_t,unsigned long,int) ; 
 size_t FUNC5 (size_t,int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_file *file,
				  struct drm_device *dev,
				  struct ttm_bo_device *bdev,
				  unsigned long pg_align,
				  bool interruptible,
				  struct drm_mode_create_dumb *args)
{
	size_t pitch, size;
	struct drm_gem_vram_object *gbo;
	int ret;
	u32 handle;

	pitch = args->width * ((args->bpp + 7) / 8);
	size = pitch * args->height;

	size = FUNC5(size, PAGE_SIZE);
	if (!size)
		return -EINVAL;

	gbo = FUNC4(dev, bdev, size, pg_align, interruptible);
	if (FUNC0(gbo))
		return FUNC1(gbo);

	ret = FUNC2(file, &gbo->bo.base, &handle);
	if (ret)
		goto err_drm_gem_object_put_unlocked;

	FUNC3(&gbo->bo.base);

	args->pitch = pitch;
	args->size = size;
	args->handle = handle;

	return 0;

err_drm_gem_object_put_unlocked:
	FUNC3(&gbo->bo.base);
	return ret;
}