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
struct ttm_bo_device {int dummy; } ;
struct drm_gem_vram_object {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_gem_vram_object* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct drm_device*,struct ttm_bo_device*,struct drm_gem_vram_object*,size_t,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_vram_object*) ; 
 struct drm_gem_vram_object* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct drm_gem_vram_object *FUNC4(struct drm_device *dev,
						struct ttm_bo_device *bdev,
						size_t size,
						unsigned long pg_align,
						bool interruptible)
{
	struct drm_gem_vram_object *gbo;
	int ret;

	gbo = FUNC3(sizeof(*gbo), GFP_KERNEL);
	if (!gbo)
		return FUNC0(-ENOMEM);

	ret = FUNC1(dev, bdev, gbo, size, pg_align, interruptible);
	if (ret < 0)
		goto err_kfree;

	return gbo;

err_kfree:
	FUNC2(gbo);
	return FUNC0(ret);
}