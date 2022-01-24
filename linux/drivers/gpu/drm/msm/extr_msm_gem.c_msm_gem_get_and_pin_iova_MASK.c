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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u64 ;
struct msm_gem_object {int /*<<< orphan*/  lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_object*,struct msm_gem_address_space*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_gem_object*,struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC4 (struct drm_gem_object*) ; 

int FUNC5(struct drm_gem_object *obj,
		struct msm_gem_address_space *aspace, uint64_t *iova)
{
	struct msm_gem_object *msm_obj = FUNC4(obj);
	u64 local;
	int ret;

	FUNC2(&msm_obj->lock);

	ret = FUNC0(obj, aspace, &local);

	if (!ret)
		ret = FUNC1(obj, aspace);

	if (!ret)
		*iova = local;

	FUNC3(&msm_obj->lock);
	return ret;
}