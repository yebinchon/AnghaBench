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
struct TYPE_6__ {int /*<<< orphan*/  obj_lock; int /*<<< orphan*/  shrink_memory; int /*<<< orphan*/  shrink_count; } ;
struct drm_i915_private {TYPE_3__ mm; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
struct drm_i915_gem_object {TYPE_1__ base; TYPE_2__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct drm_i915_gem_object *obj)
{
	/*
	 * We can only be called while the pages are pinned or when
	 * the pages are released. If pinned, we should only be called
	 * from a single caller under controlled conditions; and on release
	 * only one caller may release us. Neither the two may cross.
	 */
	if (!FUNC2(&obj->mm.link)) { /* pinned by caller */
		struct drm_i915_private *i915 = FUNC3(obj);
		unsigned long flags;

		FUNC4(&i915->mm.obj_lock, flags);
		FUNC0(FUNC2(&obj->mm.link));

		FUNC1(&obj->mm.link);
		i915->mm.shrink_count--;
		i915->mm.shrink_memory -= obj->base.size;

		FUNC5(&i915->mm.obj_lock, flags);
	}
}