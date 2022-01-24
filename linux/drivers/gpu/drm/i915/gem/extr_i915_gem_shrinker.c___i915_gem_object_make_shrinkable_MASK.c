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
struct TYPE_6__ {int /*<<< orphan*/  obj_lock; int /*<<< orphan*/  shrink_memory; int /*<<< orphan*/  shrink_count; } ;
struct drm_i915_private {TYPE_3__ mm; } ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct drm_i915_gem_object {TYPE_2__ base; TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_gem_object *obj,
					      struct list_head *head)
{
	FUNC0(!FUNC1(obj));
	FUNC0(!FUNC5(&obj->mm.link));

	if (FUNC2(obj)) {
		struct drm_i915_private *i915 = FUNC6(obj);
		unsigned long flags;

		FUNC7(&i915->mm.obj_lock, flags);
		FUNC0(!FUNC3(&obj->base.refcount));

		FUNC4(&obj->mm.link, head);
		i915->mm.shrink_count++;
		i915->mm.shrink_memory += obj->base.size;

		FUNC8(&i915->mm.obj_lock, flags);
	}
}