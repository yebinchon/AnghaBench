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
struct mtk_drm_gem_obj {int /*<<< orphan*/  base; } ;
struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct mtk_drm_gem_obj*) ; 
 int FUNC2 (struct mtk_drm_gem_obj*) ; 
 int FUNC3 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mtk_drm_gem_obj* FUNC5 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_file *file_priv, struct drm_device *dev,
			    struct drm_mode_create_dumb *args)
{
	struct mtk_drm_gem_obj *mtk_gem;
	int ret;

	args->pitch = FUNC0(args->width * args->bpp, 8);
	args->size = args->pitch * args->height;

	mtk_gem = FUNC5(dev, args->size, false);
	if (FUNC1(mtk_gem))
		return FUNC2(mtk_gem);

	/*
	 * allocate a id of idr table where the obj is registered
	 * and handle has the id what user can see.
	 */
	ret = FUNC3(file_priv, &mtk_gem->base, &args->handle);
	if (ret)
		goto err_handle_create;

	/* drop reference from allocate - handle holds it now. */
	FUNC4(&mtk_gem->base);

	return 0;

err_handle_create:
	FUNC6(&mtk_gem->base);
	return ret;
}