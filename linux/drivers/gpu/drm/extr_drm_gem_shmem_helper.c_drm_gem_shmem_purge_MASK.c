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
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_gem_shmem_object* FUNC3 (struct drm_gem_object*) ; 

bool FUNC4(struct drm_gem_object *obj)
{
	struct drm_gem_shmem_object *shmem = FUNC3(obj);

	if (!FUNC1(&shmem->pages_lock))
		return false;
	FUNC0(obj);
	FUNC2(&shmem->pages_lock);

	return true;
}