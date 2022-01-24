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
struct drm_gem_object {int dummy; } ;
struct rockchip_gem_object {struct drm_gem_object base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct rockchip_gem_object* FUNC0 (struct rockchip_gem_object*) ; 
 struct rockchip_gem_object* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct rockchip_gem_object*) ; 
 int FUNC3 (struct drm_file*,struct drm_gem_object*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct rockchip_gem_object* FUNC5 (struct drm_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 

__attribute__((used)) static struct rockchip_gem_object *
FUNC7(struct drm_file *file_priv,
				struct drm_device *drm, unsigned int size,
				unsigned int *handle)
{
	struct rockchip_gem_object *rk_obj;
	struct drm_gem_object *obj;
	int ret;

	rk_obj = FUNC5(drm, size, false);
	if (FUNC2(rk_obj))
		return FUNC0(rk_obj);

	obj = &rk_obj->base;

	/*
	 * allocate a id of idr table where the obj is registered
	 * and handle has the id what user can see.
	 */
	ret = FUNC3(file_priv, obj, handle);
	if (ret)
		goto err_handle_create;

	/* drop reference from allocate - handle holds it now. */
	FUNC4(obj);

	return rk_obj;

err_handle_create:
	FUNC6(obj);

	return FUNC1(ret);
}