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
struct nouveau_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TTM_PL_FLAG_TT ; 
 int FUNC0 (struct nouveau_bo*,int /*<<< orphan*/ ,int) ; 
 struct nouveau_bo* FUNC1 (struct drm_gem_object*) ; 

int FUNC2(struct drm_gem_object *obj)
{
	struct nouveau_bo *nvbo = FUNC1(obj);
	int ret;

	/* pin buffer into GTT */
	ret = FUNC0(nvbo, TTM_PL_FLAG_TT, false);
	if (ret)
		return -EINVAL;

	return 0;
}