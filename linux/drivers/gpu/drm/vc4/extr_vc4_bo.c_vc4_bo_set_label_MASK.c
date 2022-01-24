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
struct vc4_dev {TYPE_1__* bo_labels; int /*<<< orphan*/  bo_lock; } ;
struct vc4_bo {size_t label; } ;
struct drm_gem_object {scalar_t__ size; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ num_allocated; int /*<<< orphan*/ * name; int /*<<< orphan*/  size_allocated; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vc4_bo* FUNC3 (struct drm_gem_object*) ; 
 struct vc4_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_gem_object *gem_obj, int label)
{
	struct vc4_bo *bo = FUNC3(gem_obj);
	struct vc4_dev *vc4 = FUNC4(gem_obj->dev);

	FUNC2(&vc4->bo_lock);

	if (label != -1) {
		vc4->bo_labels[label].num_allocated++;
		vc4->bo_labels[label].size_allocated += gem_obj->size;
	}

	vc4->bo_labels[bo->label].num_allocated--;
	vc4->bo_labels[bo->label].size_allocated -= gem_obj->size;

	if (vc4->bo_labels[bo->label].num_allocated == 0 &&
	    FUNC0(bo->label)) {
		/* Free user BO label slots on last unreference.
		 * Slots are just where we track the stats for a given
		 * name, and once a name is unused we can reuse that
		 * slot.
		 */
		FUNC1(vc4->bo_labels[bo->label].name);
		vc4->bo_labels[bo->label].name = NULL;
	}

	bo->label = label;
}