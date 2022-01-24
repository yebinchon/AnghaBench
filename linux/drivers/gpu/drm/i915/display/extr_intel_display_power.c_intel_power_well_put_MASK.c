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
struct i915_power_well {int /*<<< orphan*/  count; TYPE_1__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct i915_power_well*) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv,
				 struct i915_power_well *power_well)
{
	FUNC0(!power_well->count, "Use count on power well %s is already zero",
	     power_well->desc->name);

	if (!--power_well->count)
		FUNC1(dev_priv, power_well);
}