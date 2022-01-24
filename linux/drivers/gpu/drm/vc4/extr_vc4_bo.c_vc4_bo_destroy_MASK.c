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
struct vc4_dev {int /*<<< orphan*/  bo_lock; } ;
struct drm_gem_object {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct drm_gem_object base; } ;
struct vc4_bo {TYPE_2__* validated_shader; TYPE_1__ base; } ;
struct TYPE_4__ {struct TYPE_4__* texture_samples; struct TYPE_4__* uniform_addr_offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*,int) ; 

__attribute__((used)) static void FUNC5(struct vc4_bo *bo)
{
	struct drm_gem_object *obj = &bo->base.base;
	struct vc4_dev *vc4 = FUNC3(obj->dev);

	FUNC2(&vc4->bo_lock);

	FUNC4(obj, -1);

	if (bo->validated_shader) {
		FUNC1(bo->validated_shader->uniform_addr_offsets);
		FUNC1(bo->validated_shader->texture_samples);
		FUNC1(bo->validated_shader);
		bo->validated_shader = NULL;
	}

	FUNC0(obj);
}