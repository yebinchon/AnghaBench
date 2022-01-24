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
struct intel_overlay {TYPE_1__* crtc; int /*<<< orphan*/  i915; int /*<<< orphan*/  old_vma; } ;
struct i915_vma {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct i915_vma* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_overlay *overlay)
{
	struct i915_vma *vma;

	vma = FUNC2(&overlay->old_vma);
	if (FUNC1(!vma))
		return;

	FUNC5(overlay->i915,
					FUNC0(overlay->crtc->pipe));

	FUNC3(vma);
	FUNC4(vma);
}