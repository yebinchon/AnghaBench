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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_gem_object {TYPE_2__* ops; TYPE_1__ mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* writeback ) (struct drm_i915_gem_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 

void FUNC4(struct drm_i915_gem_object *obj)
{
	FUNC2(&obj->mm.lock);
	FUNC0(FUNC1(obj));

	if (obj->ops->writeback)
		obj->ops->writeback(obj);
}