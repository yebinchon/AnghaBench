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
struct drm_gem_shmem_object {int madv; int /*<<< orphan*/  pages_lock; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct drm_gem_shmem_object* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_gem_object *obj, int madv)
{
	struct drm_gem_shmem_object *shmem = FUNC2(obj);

	FUNC0(&shmem->pages_lock);

	if (shmem->madv >= 0)
		shmem->madv = madv;

	madv = shmem->madv;

	FUNC1(&shmem->pages_lock);

	return (madv >= 0);
}