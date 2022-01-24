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
struct etnaviv_vram_mapping {scalar_t__ iova; } ;
struct etnaviv_gem_submit {int nr_bos; int flags; TYPE_1__* bos; int /*<<< orphan*/  mmu_context; } ;
struct etnaviv_gem_object {int /*<<< orphan*/  gpu_active; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {scalar_t__ va; struct etnaviv_vram_mapping* mapping; int /*<<< orphan*/  flags; struct etnaviv_gem_object* obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  BO_PINNED ; 
 int EINVAL ; 
 int ETNA_SUBMIT_SOFTPIN ; 
 scalar_t__ FUNC0 (struct etnaviv_vram_mapping*) ; 
 int FUNC1 (struct etnaviv_vram_mapping*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct etnaviv_vram_mapping* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct etnaviv_gem_submit *submit)
{
	int i, ret = 0;

	for (i = 0; i < submit->nr_bos; i++) {
		struct etnaviv_gem_object *etnaviv_obj = submit->bos[i].obj;
		struct etnaviv_vram_mapping *mapping;

		mapping = FUNC3(&etnaviv_obj->base,
						  submit->mmu_context,
						  submit->bos[i].va);
		if (FUNC0(mapping)) {
			ret = FUNC1(mapping);
			break;
		}

		if ((submit->flags & ETNA_SUBMIT_SOFTPIN) &&
		     submit->bos[i].va != mapping->iova)
			return -EINVAL;

		FUNC2(&etnaviv_obj->gpu_active);

		submit->bos[i].flags |= BO_PINNED;
		submit->bos[i].mapping = mapping;
	}

	return ret;
}