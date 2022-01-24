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
struct TYPE_3__ {struct drm_i915_private* i915; } ;
struct i915_ggtt {int num_fences; int /*<<< orphan*/  fence_list; struct i915_fence_reg* fence_regs; int /*<<< orphan*/  userfault_wakeref; int /*<<< orphan*/  userfault_list; TYPE_1__ vm; } ;
struct i915_fence_reg {int id; int /*<<< orphan*/  link; struct drm_i915_private* i915; } ;
struct drm_i915_private {int /*<<< orphan*/  uncore; int /*<<< orphan*/  runtime_pm; } ;
struct TYPE_4__ {int /*<<< orphan*/  fence_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 TYPE_2__ avail_rs ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(struct i915_ggtt *ggtt)
{
	struct drm_i915_private *i915 = ggtt->vm.i915;
	int num_fences;
	int i;

	FUNC0(&ggtt->fence_list);
	FUNC0(&ggtt->userfault_list);
	FUNC12(&ggtt->userfault_wakeref, &i915->runtime_pm);

	FUNC8(i915);

	if (FUNC1(i915) >= 7 &&
	    !(FUNC7(i915) || FUNC2(i915)))
		num_fences = 32;
	else if (FUNC1(i915) >= 4 ||
		 FUNC4(i915) || FUNC5(i915) ||
		 FUNC3(i915) || FUNC6(i915))
		num_fences = 16;
	else
		num_fences = 8;

	if (FUNC11(i915))
		num_fences = FUNC10(&i915->uncore,
					       FUNC14(avail_rs.fence_num));

	/* Initialize fence registers to zero */
	for (i = 0; i < num_fences; i++) {
		struct i915_fence_reg *fence = &ggtt->fence_regs[i];

		fence->i915 = i915;
		fence->id = i;
		FUNC13(&fence->link, &ggtt->fence_list);
	}
	ggtt->num_fences = num_fences;

	FUNC9(i915);
}