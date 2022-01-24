#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_4__ {struct list_head time_list; } ;
struct vc4_dev {int /*<<< orphan*/  bo_lock; TYPE_1__ bo_cache; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; int /*<<< orphan*/  vaddr; } ;
struct vc4_bo {scalar_t__ madv; int t_format; TYPE_2__ base; int /*<<< orphan*/  unref_head; int /*<<< orphan*/  size_head; int /*<<< orphan*/  free_time; int /*<<< orphan*/  usecnt; TYPE_3__* validated_shader; int /*<<< orphan*/  madv_lock; } ;
struct drm_gem_object {int /*<<< orphan*/  size; scalar_t__ name; scalar_t__ import_attach; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {struct TYPE_6__* texture_samples; struct TYPE_6__* uniform_addr_offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC4_BO_TYPE_KERNEL_CACHE ; 
 scalar_t__ VC4_MADV_DONTNEED ; 
 scalar_t__ __VC4_MADV_NOTSUPP ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vc4_bo* FUNC6 (struct drm_gem_object*) ; 
 struct vc4_dev* FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct vc4_bo*) ; 
 int /*<<< orphan*/  FUNC10 (struct vc4_bo*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct list_head* FUNC12 (struct drm_device*,int /*<<< orphan*/ ) ; 

void FUNC13(struct drm_gem_object *gem_bo)
{
	struct drm_device *dev = gem_bo->dev;
	struct vc4_dev *vc4 = FUNC7(dev);
	struct vc4_bo *bo = FUNC6(gem_bo);
	struct list_head *cache_list;

	/* Remove the BO from the purgeable list. */
	FUNC2(&bo->madv_lock);
	if (bo->madv == VC4_MADV_DONTNEED && !FUNC4(&bo->usecnt))
		FUNC10(bo);
	FUNC3(&bo->madv_lock);

	FUNC2(&vc4->bo_lock);
	/* If the object references someone else's memory, we can't cache it.
	 */
	if (gem_bo->import_attach) {
		FUNC9(bo);
		goto out;
	}

	/* Don't cache if it was publicly named. */
	if (gem_bo->name) {
		FUNC9(bo);
		goto out;
	}

	/* If this object was partially constructed but CMA allocation
	 * had failed, just free it. Can also happen when the BO has been
	 * purged.
	 */
	if (!bo->base.vaddr) {
		FUNC9(bo);
		goto out;
	}

	cache_list = FUNC12(dev, gem_bo->size);
	if (!cache_list) {
		FUNC9(bo);
		goto out;
	}

	if (bo->validated_shader) {
		FUNC0(bo->validated_shader->uniform_addr_offsets);
		FUNC0(bo->validated_shader->texture_samples);
		FUNC0(bo->validated_shader);
		bo->validated_shader = NULL;
	}

	/* Reset madv and usecnt before adding the BO to the cache. */
	bo->madv = __VC4_MADV_NOTSUPP;
	FUNC5(&bo->usecnt, 0);

	bo->t_format = false;
	bo->free_time = jiffies;
	FUNC1(&bo->size_head, cache_list);
	FUNC1(&bo->unref_head, &vc4->bo_cache.time_list);

	FUNC11(&bo->base.base, VC4_BO_TYPE_KERNEL_CACHE);

	FUNC8(dev);

out:
	FUNC3(&vc4->bo_lock);
}