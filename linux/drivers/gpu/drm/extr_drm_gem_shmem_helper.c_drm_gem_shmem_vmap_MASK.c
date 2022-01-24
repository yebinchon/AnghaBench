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
struct drm_gem_shmem_object {int /*<<< orphan*/  vmap_lock; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (struct drm_gem_shmem_object*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_gem_shmem_object* FUNC4 (struct drm_gem_object*) ; 

void *FUNC5(struct drm_gem_object *obj)
{
	struct drm_gem_shmem_object *shmem = FUNC4(obj);
	void *vaddr;
	int ret;

	ret = FUNC2(&shmem->vmap_lock);
	if (ret)
		return FUNC0(ret);
	vaddr = FUNC1(shmem);
	FUNC3(&shmem->vmap_lock);

	return vaddr;
}