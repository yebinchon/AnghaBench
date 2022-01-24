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
struct TYPE_2__ {int size; } ;
struct etnaviv_gem_object {scalar_t__ pages; TYPE_1__ base; scalar_t__ sgt; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct etnaviv_gem_object *etnaviv_obj)
{
	if (etnaviv_obj->sgt) {
		FUNC0(etnaviv_obj);
		FUNC4(etnaviv_obj->sgt);
		FUNC1(etnaviv_obj->sgt);
	}
	if (etnaviv_obj->pages) {
		int npages = etnaviv_obj->base.size >> PAGE_SHIFT;

		FUNC3(etnaviv_obj->pages, npages);
		FUNC2(etnaviv_obj->pages);
	}
}