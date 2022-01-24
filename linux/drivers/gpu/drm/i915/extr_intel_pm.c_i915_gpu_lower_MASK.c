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
struct TYPE_2__ {scalar_t__ max_delay; scalar_t__ min_delay; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; TYPE_1__ ips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC1 () ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(void)
{
	struct drm_i915_private *i915;

	i915 = FUNC1();
	if (!i915)
		return false;

	FUNC2(&mchdev_lock);
	if (i915->ips.max_delay < i915->ips.min_delay)
		i915->ips.max_delay++;
	FUNC3(&mchdev_lock);

	FUNC0(&i915->drm);
	return true;
}