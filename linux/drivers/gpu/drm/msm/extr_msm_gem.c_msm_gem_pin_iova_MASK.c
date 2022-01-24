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
struct page {int dummy; } ;
struct msm_gem_vma {int dummy; } ;
struct msm_gem_object {int flags; scalar_t__ madv; int /*<<< orphan*/  sgt; int /*<<< orphan*/  lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int size; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int MSM_BO_GPU_READONLY ; 
 scalar_t__ MSM_MADV_WILLNEED ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct page**) ; 
 scalar_t__ FUNC2 (int) ; 
 struct page** FUNC3 (struct drm_gem_object*) ; 
 struct msm_gem_vma* FUNC4 (struct drm_gem_object*,struct msm_gem_address_space*) ; 
 int FUNC5 (struct msm_gem_address_space*,struct msm_gem_vma*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC7 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC8(struct drm_gem_object *obj,
		struct msm_gem_address_space *aspace)
{
	struct msm_gem_object *msm_obj = FUNC7(obj);
	struct msm_gem_vma *vma;
	struct page **pages;
	int prot = IOMMU_READ;

	if (!(msm_obj->flags & MSM_BO_GPU_READONLY))
		prot |= IOMMU_WRITE;

	FUNC2(!FUNC6(&msm_obj->lock));

	if (FUNC2(msm_obj->madv != MSM_MADV_WILLNEED))
		return -EBUSY;

	vma = FUNC4(obj, aspace);
	if (FUNC2(!vma))
		return -EINVAL;

	pages = FUNC3(obj);
	if (FUNC0(pages))
		return FUNC1(pages);

	return FUNC5(aspace, vma, prot,
			msm_obj->sgt, obj->size >> PAGE_SHIFT);
}