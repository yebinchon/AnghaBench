#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i915_ppgtt {int /*<<< orphan*/  vm; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i915_ppgtt*) ; 
 struct i915_ppgtt* FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct i915_ppgtt *
FUNC3(struct drm_i915_private *i915)
{
	struct i915_ppgtt *ppgtt;

	ppgtt = FUNC1(i915);
	if (FUNC0(ppgtt))
		return ppgtt;

	FUNC2(&ppgtt->vm);

	return ppgtt;
}