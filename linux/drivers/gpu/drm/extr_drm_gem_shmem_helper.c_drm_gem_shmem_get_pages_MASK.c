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
struct drm_gem_shmem_object {int /*<<< orphan*/  pages_lock; } ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_shmem_object*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_gem_shmem_object *shmem)
{
	int ret;

	ret = FUNC1(&shmem->pages_lock);
	if (ret)
		return ret;
	ret = FUNC0(shmem);
	FUNC2(&shmem->pages_lock);

	return ret;
}