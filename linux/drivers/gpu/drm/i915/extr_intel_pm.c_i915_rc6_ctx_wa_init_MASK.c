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
struct TYPE_3__ {int ctx_corrupted; int /*<<< orphan*/  ctx_corrupted_wakeref; } ;
struct TYPE_4__ {TYPE_1__ rc6; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; TYPE_2__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *i915)
{
	if (!FUNC1(i915))
		return;

	if (FUNC2(i915)) {
		FUNC0("RC6 context corrupted, disabling runtime power management\n");
		i915->gt_pm.rc6.ctx_corrupted = true;
		i915->gt_pm.rc6.ctx_corrupted_wakeref =
			FUNC3(&i915->runtime_pm);
	}
}