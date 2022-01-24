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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {scalar_t__ cur_delay; scalar_t__ max_delay; scalar_t__ min_delay; } ;
struct drm_i915_private {TYPE_1__ ips; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMINTRSTS ; 
 scalar_t__ MEMINT_EVAL_CHG ; 
 int /*<<< orphan*/  RCBMAXAVG ; 
 int /*<<< orphan*/  RCBMINAVG ; 
 int /*<<< orphan*/  RCPREVBSYTDNAVG ; 
 int /*<<< orphan*/  RCPREVBSYTUPAVG ; 
 scalar_t__ FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;
	u32 busy_up, busy_down, max_avg, min_avg;
	u8 new_delay;

	FUNC3(&mchdev_lock);

	FUNC1(uncore,
			     MEMINTRSTS,
			     FUNC0(uncore, MEMINTRSTS));

	new_delay = dev_priv->ips.cur_delay;

	FUNC1(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
	busy_up = FUNC0(uncore, RCPREVBSYTUPAVG);
	busy_down = FUNC0(uncore, RCPREVBSYTDNAVG);
	max_avg = FUNC0(uncore, RCBMAXAVG);
	min_avg = FUNC0(uncore, RCBMINAVG);

	/* Handle RCS change request from hw */
	if (busy_up > max_avg) {
		if (dev_priv->ips.cur_delay != dev_priv->ips.max_delay)
			new_delay = dev_priv->ips.cur_delay - 1;
		if (new_delay < dev_priv->ips.max_delay)
			new_delay = dev_priv->ips.max_delay;
	} else if (busy_down < min_avg) {
		if (dev_priv->ips.cur_delay != dev_priv->ips.min_delay)
			new_delay = dev_priv->ips.cur_delay + 1;
		if (new_delay > dev_priv->ips.min_delay)
			new_delay = dev_priv->ips.min_delay;
	}

	if (FUNC2(dev_priv, new_delay))
		dev_priv->ips.cur_delay = new_delay;

	FUNC4(&mchdev_lock);

	return;
}