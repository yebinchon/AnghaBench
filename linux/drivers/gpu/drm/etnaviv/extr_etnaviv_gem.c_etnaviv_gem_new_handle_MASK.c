#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_object {TYPE_1__* filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int GFP_HIGHUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int __GFP_NOWARN ; 
 int __GFP_RETRY_MAYFAIL ; 
 int FUNC1 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct drm_gem_object**) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_gem_object*) ; 
 int /*<<< orphan*/  etnaviv_gem_shmem_ops ; 
 int /*<<< orphan*/  etnaviv_shm_lock_class ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC8 (struct drm_gem_object*) ; 

int FUNC9(struct drm_device *dev, struct drm_file *file,
	u32 size, u32 flags, u32 *handle)
{
	struct drm_gem_object *obj = NULL;
	int ret;

	size = FUNC0(size);

	ret = FUNC4(dev, size, flags,
				   &etnaviv_gem_shmem_ops, &obj);
	if (ret)
		goto fail;

	FUNC6(&FUNC8(obj)->lock, &etnaviv_shm_lock_class);

	ret = FUNC2(dev, obj, size);
	if (ret)
		goto fail;

	/*
	 * Our buffers are kept pinned, so allocating them from the MOVABLE
	 * zone is a really bad idea, and conflicts with CMA. See comments
	 * above new_inode() why this is required _and_ expected if you're
	 * going to pin these pages.
	 */
	FUNC7(obj->filp->f_mapping, GFP_HIGHUSER |
			     __GFP_RETRY_MAYFAIL | __GFP_NOWARN);

	FUNC5(dev, obj);

	ret = FUNC1(file, obj, handle);

	/* drop reference from allocate - handle holds it now */
fail:
	FUNC3(obj);

	return ret;
}