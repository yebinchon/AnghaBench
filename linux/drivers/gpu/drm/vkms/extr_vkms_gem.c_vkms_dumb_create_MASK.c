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
typedef  int u64 ;
struct drm_mode_create_dumb {int width; int height; int pitch; int /*<<< orphan*/  size; int /*<<< orphan*/  handle; int /*<<< orphan*/  bpp; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC4 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct drm_file *file, struct drm_device *dev,
		     struct drm_mode_create_dumb *args)
{
	struct drm_gem_object *gem_obj;
	u64 pitch, size;

	if (!args || !dev || !file)
		return -EINVAL;

	pitch = args->width * FUNC0(args->bpp, 8);
	size = pitch * args->height;

	if (!size)
		return -EINVAL;

	gem_obj = FUNC4(dev, file, &args->handle, size);
	if (FUNC2(gem_obj))
		return FUNC3(gem_obj);

	args->size = gem_obj->size;
	args->pitch = pitch;

	FUNC1("Created object of size %lld\n", size);

	return 0;
}