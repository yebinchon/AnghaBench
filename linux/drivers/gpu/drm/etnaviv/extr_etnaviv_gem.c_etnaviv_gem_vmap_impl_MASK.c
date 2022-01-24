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
struct TYPE_2__ {int size; } ;
struct etnaviv_gem_object {TYPE_1__ base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page**) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_MAP ; 
 struct page** FUNC1 (struct etnaviv_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct page**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(struct etnaviv_gem_object *obj)
{
	struct page **pages;

	FUNC2(&obj->lock);

	pages = FUNC1(obj);
	if (FUNC0(pages))
		return NULL;

	return FUNC4(pages, obj->base.size >> PAGE_SHIFT,
			VM_MAP, FUNC3(PAGE_KERNEL));
}