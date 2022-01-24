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
typedef  int u32 ;
struct i915_power_well_regs {int /*<<< orphan*/  driver; } ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int idx; struct i915_power_well_regs* regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; TYPE_1__ hsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*,struct i915_power_well_regs const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
					    struct i915_power_well *power_well)
{
	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
	int pw_idx = power_well->desc->hsw.idx;
	bool disabled;
	u32 reqs;

	/*
	 * Bspec doesn't require waiting for PWs to get disabled, but still do
	 * this for paranoia. The known cases where a PW will be forced on:
	 * - a KVMR request on any power well via the KVMR request register
	 * - a DMC request on PW1 and MISC_IO power wells via the BIOS and
	 *   DEBUG request registers
	 * Skip the wait in case any of the request bits are set and print a
	 * diagnostic message.
	 */
	FUNC4((disabled = !(FUNC2(regs->driver) &
			       FUNC1(pw_idx))) ||
		 (reqs = FUNC3(dev_priv, regs, pw_idx)), 1);
	if (disabled)
		return;

	FUNC0("%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
		      power_well->desc->name,
		      !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs & 8));
}