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
struct i915_gpu_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct i915_gpu_state* first_error; } ;
struct drm_i915_private {TYPE_1__ gpu_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct i915_gpu_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_i915_private *i915)
{
	struct i915_gpu_state *error;

	FUNC3(&i915->gpu_error.lock);
	error = i915->gpu_error.first_error;
	if (error != FUNC0(-ENODEV)) /* if disabled, always disabled */
		i915->gpu_error.first_error = NULL;
	FUNC4(&i915->gpu_error.lock);

	if (!FUNC1(error))
		FUNC2(error);
}