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
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int PORT_PLL_ENABLE ; 
 int PORT_PLL_POWER_ENABLE ; 
 int PORT_PLL_POWER_STATE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv,
					struct intel_shared_dpll *pll)
{
	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
	u32 temp;

	temp = FUNC2(FUNC0(port));
	temp &= ~PORT_PLL_ENABLE;
	FUNC3(FUNC0(port), temp);
	FUNC5(FUNC0(port));

	if (FUNC4(dev_priv)) {
		temp = FUNC2(FUNC0(port));
		temp &= ~PORT_PLL_POWER_ENABLE;
		FUNC3(FUNC0(port), temp);

		if (FUNC6(!(FUNC2(FUNC0(port)) &
				PORT_PLL_POWER_STATE), 200))
			FUNC1("Power state not reset for PLL:%d\n", port);
	}
}