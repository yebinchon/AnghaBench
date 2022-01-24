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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_shmem_object {int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct drm_gem_shmem_object* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_gem_shmem_object*) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_gem_shmem_object* FUNC4 (struct drm_device*,size_t) ; 

struct drm_gem_shmem_object *
FUNC5(struct drm_file *file_priv,
				 struct drm_device *dev, size_t size,
				 uint32_t *handle)
{
	struct drm_gem_shmem_object *shmem;
	int ret;

	shmem = FUNC4(dev, size);
	if (FUNC1(shmem))
		return shmem;

	/*
	 * Allocate an id of idr table where the obj is registered
	 * and handle has the id what user can see.
	 */
	ret = FUNC2(file_priv, &shmem->base, handle);
	/* drop reference from allocate - handle holds it now. */
	FUNC3(&shmem->base);
	if (ret)
		return FUNC0(ret);

	return shmem;
}