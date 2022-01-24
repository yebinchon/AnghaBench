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
struct i915_power_well_regs {int /*<<< orphan*/  bios; int /*<<< orphan*/  driver; } ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum i915_power_well_id { ____Placeholder_i915_power_well_id } i915_power_well_id ;
struct TYPE_3__ {int idx; struct i915_power_well_regs* regs; } ;
struct TYPE_4__ {int id; TYPE_1__ hsw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int SKL_DISP_PW_1 ; 
 int SKL_DISP_PW_MISC_IO ; 

__attribute__((used)) static bool FUNC5(struct drm_i915_private *dev_priv,
				   struct i915_power_well *power_well)
{
	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
	enum i915_power_well_id id = power_well->desc->id;
	int pw_idx = power_well->desc->hsw.idx;
	u32 mask = FUNC0(pw_idx) |
		   FUNC1(pw_idx);
	u32 val;

	val = FUNC2(regs->driver);

	/*
	 * On GEN9 big core due to a DMC bug the driver's request bits for PW1
	 * and the MISC_IO PW will be not restored, so check instead for the
	 * BIOS's own request bits, which are forced-on for these power wells
	 * when exiting DC5/6.
	 */
	if (FUNC3(dev_priv, 9) && !FUNC4(dev_priv) &&
	    (id == SKL_DISP_PW_1 || id == SKL_DISP_PW_MISC_IO))
		val |= FUNC2(regs->bios);

	return (val & mask) == mask;
}