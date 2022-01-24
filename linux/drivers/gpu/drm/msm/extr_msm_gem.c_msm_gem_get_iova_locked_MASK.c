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
struct drm_gem_object {int size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct msm_gem_vma*) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct msm_gem_vma*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct msm_gem_vma* FUNC3 (struct drm_gem_object*,struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gem_vma*) ; 
 struct msm_gem_vma* FUNC5 (struct drm_gem_object*,struct msm_gem_address_space*) ; 
 int FUNC6 (struct msm_gem_address_space*,struct msm_gem_vma*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC8 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC9(struct drm_gem_object *obj,
		struct msm_gem_address_space *aspace, uint64_t *iova)
{
	struct msm_gem_object *msm_obj = FUNC8(obj);
	struct msm_gem_vma *vma;
	int ret = 0;

	FUNC2(!FUNC7(&msm_obj->lock));

	vma = FUNC5(obj, aspace);

	if (!vma) {
		vma = FUNC3(obj, aspace);
		if (FUNC0(vma))
			return FUNC1(vma);

		ret = FUNC6(aspace, vma, obj->size >> PAGE_SHIFT);
		if (ret) {
			FUNC4(vma);
			return ret;
		}
	}

	*iova = vma->iova;
	return 0;
}