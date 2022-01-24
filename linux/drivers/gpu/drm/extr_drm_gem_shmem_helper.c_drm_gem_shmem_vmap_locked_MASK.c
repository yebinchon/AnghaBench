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
struct drm_gem_object {int size; TYPE_1__* import_attach; } ;
struct drm_gem_shmem_object {void* vaddr; scalar_t__ vmap_use_count; int /*<<< orphan*/  pages; struct drm_gem_object base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_MAP ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC7(struct drm_gem_shmem_object *shmem)
{
	struct drm_gem_object *obj = &shmem->base;
	int ret;

	if (shmem->vmap_use_count++ > 0)
		return shmem->vaddr;

	ret = FUNC3(shmem);
	if (ret)
		goto err_zero_use;

	if (obj->import_attach)
		shmem->vaddr = FUNC2(obj->import_attach->dmabuf);
	else
		shmem->vaddr = FUNC6(shmem->pages, obj->size >> PAGE_SHIFT,
				    VM_MAP, FUNC5(PAGE_KERNEL));

	if (!shmem->vaddr) {
		FUNC0("Failed to vmap pages\n");
		ret = -ENOMEM;
		goto err_put_pages;
	}

	return shmem->vaddr;

err_put_pages:
	FUNC4(shmem);
err_zero_use:
	shmem->vmap_use_count = 0;

	return FUNC1(ret);
}