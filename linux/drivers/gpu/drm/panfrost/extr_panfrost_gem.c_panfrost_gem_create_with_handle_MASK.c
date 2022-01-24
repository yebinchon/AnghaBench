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
typedef  int u32 ;
struct panfrost_gem_object {int noexec; int is_heap; } ;
struct drm_gem_shmem_object {int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct panfrost_gem_object* FUNC0 (struct drm_gem_shmem_object*) ; 
 struct panfrost_gem_object* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_gem_shmem_object*) ; 
 int PANFROST_BO_HEAP ; 
 int PANFROST_BO_NOEXEC ; 
 int /*<<< orphan*/  SZ_2M ; 
 int FUNC3 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_gem_shmem_object* FUNC5 (struct drm_device*,size_t) ; 
 size_t FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 struct panfrost_gem_object* FUNC7 (int /*<<< orphan*/ *) ; 

struct panfrost_gem_object *
FUNC8(struct drm_file *file_priv,
				struct drm_device *dev, size_t size,
				u32 flags,
				uint32_t *handle)
{
	int ret;
	struct drm_gem_shmem_object *shmem;
	struct panfrost_gem_object *bo;

	/* Round up heap allocations to 2MB to keep fault handling simple */
	if (flags & PANFROST_BO_HEAP)
		size = FUNC6(size, SZ_2M);

	shmem = FUNC5(dev, size);
	if (FUNC2(shmem))
		return FUNC0(shmem);

	bo = FUNC7(&shmem->base);
	bo->noexec = !!(flags & PANFROST_BO_NOEXEC);
	bo->is_heap = !!(flags & PANFROST_BO_HEAP);

	/*
	 * Allocate an id of idr table where the obj is registered
	 * and handle has the id what user can see.
	 */
	ret = FUNC3(file_priv, &shmem->base, handle);
	/* drop reference from allocate - handle holds it now. */
	FUNC4(&shmem->base);
	if (ret)
		return FUNC1(ret);

	return bo;
}