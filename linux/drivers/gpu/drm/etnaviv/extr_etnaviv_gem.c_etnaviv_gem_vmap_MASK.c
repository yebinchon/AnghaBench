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
struct etnaviv_gem_object {void* vaddr; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_2__ {void* (* vmap ) (struct etnaviv_gem_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct etnaviv_gem_object*) ; 
 struct etnaviv_gem_object* FUNC3 (struct drm_gem_object*) ; 

void *FUNC4(struct drm_gem_object *obj)
{
	struct etnaviv_gem_object *etnaviv_obj = FUNC3(obj);

	if (etnaviv_obj->vaddr)
		return etnaviv_obj->vaddr;

	FUNC0(&etnaviv_obj->lock);
	/*
	 * Need to check again, as we might have raced with another thread
	 * while waiting for the mutex.
	 */
	if (!etnaviv_obj->vaddr)
		etnaviv_obj->vaddr = etnaviv_obj->ops->vmap(etnaviv_obj);
	FUNC1(&etnaviv_obj->lock);

	return etnaviv_obj->vaddr;
}