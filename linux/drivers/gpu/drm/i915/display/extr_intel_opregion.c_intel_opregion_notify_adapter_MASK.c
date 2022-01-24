#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_i915_private {int dummy; } ;
typedef  scalar_t__ pci_power_t ;
struct TYPE_3__ {scalar_t__ pci_power_state; int /*<<< orphan*/  parm; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  SWSCI_SBCB_ADAPTER_POWER_STATE ; 
 TYPE_1__* power_state_map ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_i915_private *dev_priv,
				  pci_power_t state)
{
	int i;

	if (!FUNC1(dev_priv))
		return 0;

	for (i = 0; i < FUNC0(power_state_map); i++) {
		if (state == power_state_map[i].pci_power_state)
			return FUNC2(dev_priv, SWSCI_SBCB_ADAPTER_POWER_STATE,
				     power_state_map[i].parm, NULL);
	}

	return -EINVAL;
}