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
typedef  int /*<<< orphan*/  u32 ;
struct drm_mode_create_dumb {int pitch; int width; int size; int height; int /*<<< orphan*/  handle; int /*<<< orphan*/  bpp; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int FUNC5 (struct drm_device*,int,int,struct drm_gem_object**) ; 

int FUNC6(struct drm_file *file, struct drm_device *dev,
		      struct drm_mode_create_dumb *args)
{
	struct drm_gem_object *gobj;
	u32 handle;
	int ret;

	args->pitch = FUNC0(args->width * FUNC1(args->bpp, 8), 16);
	args->size = args->pitch * args->height;

	ret = FUNC5(dev, args->size, false,
			       &gobj);
	if (ret) {
		FUNC2("failed to create GEM object: %d\n", ret);
		return ret;
	}

	ret = FUNC3(file, gobj, &handle);
	FUNC4(gobj);
	if (ret) {
		FUNC2("failed to unreference GEM object: %d\n", ret);
		return ret;
	}

	args->handle = handle;
	return 0;
}