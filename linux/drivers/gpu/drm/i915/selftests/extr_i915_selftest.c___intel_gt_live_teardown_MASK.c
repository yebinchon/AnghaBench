#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_gt {TYPE_2__* i915; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_5__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I915_WAIT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int err, void *data)
{
	struct intel_gt *gt = data;

	FUNC2(&gt->i915->drm.struct_mutex);
	if (FUNC1(gt->i915, I915_WAIT_LOCKED))
		err = -EIO;
	FUNC3(&gt->i915->drm.struct_mutex);

	FUNC0(gt->i915);

	return err;
}