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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ reg; } ;
struct i915_power_well_regs {TYPE_1__ debug; TYPE_1__ kvmr; TYPE_1__ driver; TYPE_1__ bios; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_1__) ; 

__attribute__((used)) static u32 FUNC2(struct drm_i915_private *dev_priv,
				     const struct i915_power_well_regs *regs,
				     int pw_idx)
{
	u32 req_mask = FUNC0(pw_idx);
	u32 ret;

	ret = FUNC1(regs->bios) & req_mask ? 1 : 0;
	ret |= FUNC1(regs->driver) & req_mask ? 2 : 0;
	if (regs->kvmr.reg)
		ret |= FUNC1(regs->kvmr) & req_mask ? 4 : 0;
	ret |= FUNC1(regs->debug) & req_mask ? 8 : 0;

	return ret;
}