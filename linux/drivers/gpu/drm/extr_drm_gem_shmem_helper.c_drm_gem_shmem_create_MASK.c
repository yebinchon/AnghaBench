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
struct drm_gem_shmem_object {int /*<<< orphan*/  madv_list; int /*<<< orphan*/  vmap_lock; int /*<<< orphan*/  pages_lock; } ;
struct drm_gem_object {TYPE_2__* filp; int /*<<< orphan*/ * funcs; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_mapping; } ;
struct TYPE_3__ {struct drm_gem_object* (* gem_create_object ) (struct drm_device*,size_t) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_gem_shmem_object* FUNC0 (int) ; 
 int GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (size_t) ; 
 int __GFP_NOWARN ; 
 int __GFP_RETRY_MAYFAIL ; 
 int FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct drm_device*,struct drm_gem_object*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  drm_gem_shmem_funcs ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC10 (struct drm_device*,size_t) ; 
 struct drm_gem_shmem_object* FUNC11 (struct drm_gem_object*) ; 

struct drm_gem_shmem_object *FUNC12(struct drm_device *dev, size_t size)
{
	struct drm_gem_shmem_object *shmem;
	struct drm_gem_object *obj;
	int ret;

	size = FUNC2(size);

	if (dev->driver->gem_create_object)
		obj = dev->driver->gem_create_object(dev, size);
	else
		obj = FUNC7(sizeof(*shmem), GFP_KERNEL);
	if (!obj)
		return FUNC0(-ENOMEM);

	if (!obj->funcs)
		obj->funcs = &drm_gem_shmem_funcs;

	ret = FUNC4(dev, obj, size);
	if (ret)
		goto err_free;

	ret = FUNC3(obj);
	if (ret)
		goto err_release;

	shmem = FUNC11(obj);
	FUNC9(&shmem->pages_lock);
	FUNC9(&shmem->vmap_lock);
	FUNC1(&shmem->madv_list);

	/*
	 * Our buffers are kept pinned, so allocating them
	 * from the MOVABLE zone is a really bad idea, and
	 * conflicts with CMA. See comments above new_inode()
	 * why this is required _and_ expected if you're
	 * going to pin these pages.
	 */
	FUNC8(obj->filp->f_mapping, GFP_HIGHUSER |
			     __GFP_RETRY_MAYFAIL | __GFP_NOWARN);

	return shmem;

err_release:
	FUNC5(obj);
err_free:
	FUNC6(obj);

	return FUNC0(ret);
}