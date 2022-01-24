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
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct rockchip_gem_object* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rockchip_gem_object*) ; 
 int FUNC2 (struct rockchip_gem_object*,int) ; 
 struct rockchip_gem_object* FUNC3 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_gem_object*) ; 

struct rockchip_gem_object *
FUNC5(struct drm_device *drm, unsigned int size,
			   bool alloc_kmap)
{
	struct rockchip_gem_object *rk_obj;
	int ret;

	rk_obj = FUNC3(drm, size);
	if (FUNC1(rk_obj))
		return rk_obj;

	ret = FUNC2(rk_obj, alloc_kmap);
	if (ret)
		goto err_free_rk_obj;

	return rk_obj;

err_free_rk_obj:
	FUNC4(rk_obj);
	return FUNC0(ret);
}