#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  dev; TYPE_1__* filp; } ;
struct TYPE_6__ {int dirty; scalar_t__ madv; } ;
struct drm_i915_gem_object {TYPE_4__* phys_handle; TYPE_3__ base; TYPE_2__ mm; } ;
struct address_space {int dummy; } ;
struct TYPE_8__ {char* vaddr; } ;
struct TYPE_5__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 scalar_t__ I915_MADV_WILLNEED ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*,struct sg_table*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*) ; 
 char* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct sg_table*) ; 
 struct page* FUNC12 (struct address_space*,int) ; 

__attribute__((used)) static void
FUNC13(struct drm_i915_gem_object *obj,
			       struct sg_table *pages)
{
	FUNC1(obj, pages, false);

	if (obj->mm.dirty) {
		struct address_space *mapping = obj->base.filp->f_mapping;
		char *vaddr = obj->phys_handle->vaddr;
		int i;

		for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
			struct page *page;
			char *dst;

			page = FUNC12(mapping, i);
			if (FUNC0(page))
				continue;

			dst = FUNC5(page);
			FUNC2(vaddr, PAGE_SIZE);
			FUNC8(dst, vaddr, PAGE_SIZE);
			FUNC6(dst);

			FUNC10(page);
			if (obj->mm.madv == I915_MADV_WILLNEED)
				FUNC7(page);
			FUNC9(page);
			vaddr += PAGE_SIZE;
		}
		obj->mm.dirty = false;
	}

	FUNC11(pages);
	FUNC4(pages);

	FUNC3(obj->base.dev, obj->phys_handle);
}