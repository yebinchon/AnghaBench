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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct etnaviv_vram_mapping {int use; int /*<<< orphan*/  obj_node; struct etnaviv_iommu_context* context; struct etnaviv_gem_object* object; int /*<<< orphan*/  scan_node; } ;
struct etnaviv_iommu_context {TYPE_1__* global; int /*<<< orphan*/  lock; } ;
struct etnaviv_gem_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  vram_list; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  memory_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct etnaviv_vram_mapping* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct page**) ; 
 int FUNC3 (struct page**) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct page** FUNC5 (struct etnaviv_gem_object*) ; 
 struct etnaviv_vram_mapping* FUNC6 (struct etnaviv_gem_object*,struct etnaviv_iommu_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct etnaviv_iommu_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct etnaviv_iommu_context*) ; 
 int FUNC9 (struct etnaviv_iommu_context*,struct etnaviv_gem_object*,int /*<<< orphan*/ ,struct etnaviv_vram_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct etnaviv_vram_mapping*) ; 
 struct etnaviv_vram_mapping* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct etnaviv_gem_object* FUNC16 (struct drm_gem_object*) ; 

struct etnaviv_vram_mapping *FUNC17(
	struct drm_gem_object *obj, struct etnaviv_iommu_context *mmu_context,
	u64 va)
{
	struct etnaviv_gem_object *etnaviv_obj = FUNC16(obj);
	struct etnaviv_vram_mapping *mapping;
	struct page **pages;
	int ret = 0;

	FUNC14(&etnaviv_obj->lock);
	mapping = FUNC6(etnaviv_obj, mmu_context);
	if (mapping) {
		/*
		 * Holding the object lock prevents the use count changing
		 * beneath us.  If the use count is zero, the MMU might be
		 * reaping this object, so take the lock and re-check that
		 * the MMU owns this mapping to close this race.
		 */
		if (mapping->use == 0) {
			FUNC14(&mmu_context->lock);
			if (mapping->context == mmu_context)
				mapping->use += 1;
			else
				mapping = NULL;
			FUNC15(&mmu_context->lock);
			if (mapping)
				goto out;
		} else {
			mapping->use += 1;
			goto out;
		}
	}

	pages = FUNC5(etnaviv_obj);
	if (FUNC2(pages)) {
		ret = FUNC3(pages);
		goto out;
	}

	/*
	 * See if we have a reaped vram mapping we can re-use before
	 * allocating a fresh mapping.
	 */
	mapping = FUNC6(etnaviv_obj, NULL);
	if (!mapping) {
		mapping = FUNC11(sizeof(*mapping), GFP_KERNEL);
		if (!mapping) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC1(&mapping->scan_node);
		mapping->object = etnaviv_obj;
	} else {
		FUNC13(&mapping->obj_node);
	}

	FUNC7(mmu_context);
	mapping->context = mmu_context;
	mapping->use = 1;

	ret = FUNC9(mmu_context, etnaviv_obj,
				    mmu_context->global->memory_base,
				    mapping, va);
	if (ret < 0) {
		FUNC8(mmu_context);
		FUNC10(mapping);
	} else {
		FUNC12(&mapping->obj_node, &etnaviv_obj->vram_list);
	}

out:
	FUNC15(&etnaviv_obj->lock);

	if (ret)
		return FUNC0(ret);

	/* Take a reference on the object */
	FUNC4(obj);
	return mapping;
}