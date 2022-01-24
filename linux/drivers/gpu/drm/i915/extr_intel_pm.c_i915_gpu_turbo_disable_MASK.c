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
struct TYPE_2__ {int /*<<< orphan*/  fstart; int /*<<< orphan*/  max_delay; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; TYPE_1__ ips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC2 () ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(void)
{
	struct drm_i915_private *i915;
	bool ret;

	i915 = FUNC2();
	if (!i915)
		return false;

	FUNC3(&mchdev_lock);
	i915->ips.max_delay = i915->ips.fstart;
	ret = FUNC1(i915, i915->ips.fstart);
	FUNC4(&mchdev_lock);

	FUNC0(&i915->drm);
	return ret;
}