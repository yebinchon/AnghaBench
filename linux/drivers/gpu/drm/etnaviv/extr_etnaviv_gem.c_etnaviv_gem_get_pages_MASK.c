#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int size; struct drm_device* dev; } ;
struct etnaviv_gem_object {struct page** pages; struct sg_table* sgt; TYPE_2__ base; TYPE_1__* ops; int /*<<< orphan*/  lock; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int (* get_pages ) (struct etnaviv_gem_object*) ;} ;

/* Variables and functions */
 struct page** FUNC0 (struct sg_table*) ; 
 struct page** FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sg_table*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC5 (struct page**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct etnaviv_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct etnaviv_gem_object*) ; 

struct page **FUNC9(struct etnaviv_gem_object *etnaviv_obj)
{
	int ret;

	FUNC7(&etnaviv_obj->lock);

	if (!etnaviv_obj->pages) {
		ret = etnaviv_obj->ops->get_pages(etnaviv_obj);
		if (ret < 0)
			return FUNC1(ret);
	}

	if (!etnaviv_obj->sgt) {
		struct drm_device *dev = etnaviv_obj->base.dev;
		int npages = etnaviv_obj->base.size >> PAGE_SHIFT;
		struct sg_table *sgt;

		sgt = FUNC5(etnaviv_obj->pages, npages);
		if (FUNC2(sgt)) {
			FUNC4(dev->dev, "failed to allocate sgt: %ld\n",
				FUNC3(sgt));
			return FUNC0(sgt);
		}

		etnaviv_obj->sgt = sgt;

		FUNC6(etnaviv_obj);
	}

	return etnaviv_obj->pages;
}