#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int size; } ;
struct TYPE_8__ {int /*<<< orphan*/  madv_list; TYPE_2__ base; } ;
struct panfrost_gem_object {TYPE_3__ base; TYPE_4__* sgts; } ;
struct panfrost_device {int /*<<< orphan*/  shrinker_lock; int /*<<< orphan*/  dev; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  nents; scalar_t__ sgl; } ;
struct TYPE_6__ {struct panfrost_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int SZ_2M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 struct panfrost_gem_object* FUNC8 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC9(struct drm_gem_object *obj)
{
	struct panfrost_gem_object *bo = FUNC8(obj);
	struct panfrost_device *pfdev = obj->dev->dev_private;

	if (bo->sgts) {
		int i;
		int n_sgt = bo->base.base.size / SZ_2M;

		for (i = 0; i < n_sgt; i++) {
			if (bo->sgts[i].sgl) {
				FUNC0(pfdev->dev, bo->sgts[i].sgl,
					     bo->sgts[i].nents, DMA_BIDIRECTIONAL);
				FUNC7(&bo->sgts[i]);
			}
		}
		FUNC2(bo->sgts);
	}

	FUNC5(&pfdev->shrinker_lock);
	if (!FUNC4(&bo->base.madv_list))
		FUNC3(&bo->base.madv_list);
	FUNC6(&pfdev->shrinker_lock);

	FUNC1(obj);
}