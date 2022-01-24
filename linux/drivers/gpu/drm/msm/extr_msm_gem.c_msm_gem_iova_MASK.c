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
struct msm_gem_vma {int /*<<< orphan*/  iova; } ;
struct msm_gem_object {int /*<<< orphan*/  lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct msm_gem_vma* FUNC1 (struct drm_gem_object*,struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC4 (struct drm_gem_object*) ; 

uint64_t FUNC5(struct drm_gem_object *obj,
		struct msm_gem_address_space *aspace)
{
	struct msm_gem_object *msm_obj = FUNC4(obj);
	struct msm_gem_vma *vma;

	FUNC2(&msm_obj->lock);
	vma = FUNC1(obj, aspace);
	FUNC3(&msm_obj->lock);
	FUNC0(!vma);

	return vma ? vma->iova : 0;
}