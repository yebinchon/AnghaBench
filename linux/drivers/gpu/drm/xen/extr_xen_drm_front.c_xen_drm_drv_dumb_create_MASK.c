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
struct xen_drm_front_drm_info {int /*<<< orphan*/  front_info; } ;
struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct xen_drm_front_drm_info* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC9 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC11(struct drm_file *filp,
				   struct drm_device *dev,
				   struct drm_mode_create_dumb *args)
{
	struct xen_drm_front_drm_info *drm_info = dev->dev_private;
	struct drm_gem_object *obj;
	int ret;

	/*
	 * Dumb creation is a two stage process: first we create a fully
	 * constructed GEM object which is communicated to the backend, and
	 * only after that we can create GEM's handle. This is done so,
	 * because of the possible races: once you create a handle it becomes
	 * immediately visible to user-space, so the latter can try accessing
	 * object without pages etc.
	 * For details also see drm_gem_handle_create
	 */
	args->pitch = FUNC0(args->width * args->bpp, 8);
	args->size = args->pitch * args->height;

	obj = FUNC9(dev, args->size);
	if (FUNC2(obj)) {
		ret = FUNC3(obj);
		goto fail;
	}

	ret = FUNC6(drm_info->front_info,
					FUNC8(obj),
					args->width, args->height, args->bpp,
					args->size,
					FUNC10(obj));
	if (ret)
		goto fail_backend;

	/* This is the tail of GEM object creation */
	ret = FUNC4(filp, obj, &args->handle);
	if (ret)
		goto fail_handle;

	/* Drop reference from allocate - handle holds it now */
	FUNC5(obj);
	return 0;

fail_handle:
	FUNC7(drm_info->front_info,
				   FUNC8(obj));
fail_backend:
	/* drop reference from allocate */
	FUNC5(obj);
fail:
	FUNC1("Failed to create dumb buffer: %d\n", ret);
	return ret;
}