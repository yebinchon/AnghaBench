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
struct drm_gem_shmem_object {int /*<<< orphan*/  vmap_lock; int /*<<< orphan*/  pages_lock; int /*<<< orphan*/  pages_use_count; scalar_t__ pages; struct drm_gem_shmem_object* sgt; int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; int /*<<< orphan*/  vmap_use_count; } ;
struct drm_gem_object {TYPE_1__* dev; scalar_t__ import_attach; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*,struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gem_shmem_object*) ; 
 struct drm_gem_shmem_object* FUNC9 (struct drm_gem_object*) ; 

void FUNC10(struct drm_gem_object *obj)
{
	struct drm_gem_shmem_object *shmem = FUNC9(obj);

	FUNC0(shmem->vmap_use_count);

	if (obj->import_attach) {
		shmem->pages_use_count--;
		FUNC4(obj, shmem->sgt);
		FUNC6(shmem->pages);
	} else {
		if (shmem->sgt) {
			FUNC1(obj->dev->dev, shmem->sgt->sgl,
				     shmem->sgt->nents, DMA_BIDIRECTIONAL);
			FUNC8(shmem->sgt);
			FUNC5(shmem->sgt);
		}
		if (shmem->pages)
			FUNC3(shmem);
	}

	FUNC0(shmem->pages_use_count);

	FUNC2(obj);
	FUNC7(&shmem->pages_lock);
	FUNC7(&shmem->vmap_lock);
	FUNC5(shmem);
}