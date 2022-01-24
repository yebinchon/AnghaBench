#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct msm_gem_object {unsigned int madv; void* vaddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  vmap_count; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct page**) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_SHIFT ; 
 int FUNC3 (struct page**) ; 
 int /*<<< orphan*/  VM_MAP ; 
 scalar_t__ FUNC4 (int) ; 
 struct page** FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct msm_gem_object* FUNC9 (struct drm_gem_object*) ; 
 void* FUNC10 (struct page**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC11(struct drm_gem_object *obj, unsigned madv)
{
	struct msm_gem_object *msm_obj = FUNC9(obj);
	int ret = 0;

	FUNC6(&msm_obj->lock);

	if (FUNC4(msm_obj->madv > madv)) {
		FUNC0(obj->dev->dev, "Invalid madv state: %u vs %u\n",
			msm_obj->madv, madv);
		FUNC7(&msm_obj->lock);
		return FUNC1(-EBUSY);
	}

	/* increment vmap_count *before* vmap() call, so shrinker can
	 * check vmap_count (is_vunmapable()) outside of msm_obj->lock.
	 * This guarantees that we won't try to msm_gem_vunmap() this
	 * same object from within the vmap() call (while we already
	 * hold msm_obj->lock)
	 */
	msm_obj->vmap_count++;

	if (!msm_obj->vaddr) {
		struct page **pages = FUNC5(obj);
		if (FUNC2(pages)) {
			ret = FUNC3(pages);
			goto fail;
		}
		msm_obj->vaddr = FUNC10(pages, obj->size >> PAGE_SHIFT,
				VM_MAP, FUNC8(PAGE_KERNEL));
		if (msm_obj->vaddr == NULL) {
			ret = -ENOMEM;
			goto fail;
		}
	}

	FUNC7(&msm_obj->lock);
	return msm_obj->vaddr;

fail:
	msm_obj->vmap_count--;
	FUNC7(&msm_obj->lock);
	return FUNC1(ret);
}