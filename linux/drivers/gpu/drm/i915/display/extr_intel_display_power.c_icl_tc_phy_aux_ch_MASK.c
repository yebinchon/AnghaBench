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
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum aux_ch { ____Placeholder_aux_ch } aux_ch ;
struct TYPE_3__ {int idx; scalar_t__ is_tc_tbt; } ;
struct TYPE_4__ {TYPE_1__ hsw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static enum aux_ch FUNC2(struct drm_i915_private *dev_priv,
				     struct i915_power_well *power_well)
{
	int pw_idx = power_well->desc->hsw.idx;

	return power_well->desc->hsw.is_tc_tbt ? FUNC1(pw_idx) :
						 FUNC0(pw_idx);
}