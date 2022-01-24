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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rockchip_gem_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_gem_object*,unsigned int) ; 
 struct rockchip_gem_object* FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

struct rockchip_gem_object *
	FUNC4(struct drm_device *drm, unsigned int size)
{
	struct rockchip_gem_object *rk_obj;
	struct drm_gem_object *obj;

	size = FUNC3(size, PAGE_SIZE);

	rk_obj = FUNC2(sizeof(*rk_obj), GFP_KERNEL);
	if (!rk_obj)
		return FUNC0(-ENOMEM);

	obj = &rk_obj->base;

	FUNC1(drm, obj, size);

	return rk_obj;
}