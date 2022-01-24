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
struct TYPE_2__ {int /*<<< orphan*/  total; int /*<<< orphan*/  (* clear_range ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  gt; struct drm_i915_private* i915; } ;
struct i915_ggtt {int /*<<< orphan*/  (* invalidate ) (struct i915_ggtt*) ;TYPE_1__ vm; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_ggtt*) ; 

__attribute__((used)) static void FUNC4(struct i915_ggtt *ggtt)
{
	struct drm_i915_private *i915 = ggtt->vm.i915;

	/* Don't bother messing with faults pre GEN6 as we have little
	 * documentation supporting that it's a good idea.
	 */
	if (FUNC0(i915) < 6)
		return;

	FUNC1(ggtt->vm.gt);

	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);

	ggtt->invalidate(ggtt);
}