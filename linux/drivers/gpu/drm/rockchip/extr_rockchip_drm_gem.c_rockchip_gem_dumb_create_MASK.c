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
struct rockchip_gem_object {int dummy; } ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; int size; int height; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct rockchip_gem_object*) ; 
 struct rockchip_gem_object* FUNC3 (struct drm_file*,struct drm_device*,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_file *file_priv,
			     struct drm_device *dev,
			     struct drm_mode_create_dumb *args)
{
	struct rockchip_gem_object *rk_obj;
	int min_pitch = FUNC1(args->width * args->bpp, 8);

	/*
	 * align to 64 bytes since Mali requires it.
	 */
	args->pitch = FUNC0(min_pitch, 64);
	args->size = args->pitch * args->height;

	rk_obj = FUNC3(file_priv, dev, args->size,
						 &args->handle);

	return FUNC2(rk_obj);
}