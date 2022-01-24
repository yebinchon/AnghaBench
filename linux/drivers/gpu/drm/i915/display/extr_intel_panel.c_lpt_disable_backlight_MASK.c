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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLC_PWM_CPU_CTL2 ; 
 int /*<<< orphan*/  BLC_PWM_PCH_CTL1 ; 
 int BLM_PCH_PWM_ENABLE ; 
 int BLM_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct drm_connector_state *old_conn_state)
{
	struct intel_connector *connector = FUNC5(old_conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC4(connector->base.dev);
	u32 tmp;

	FUNC3(old_conn_state, 0);

	/*
	 * Although we don't support or enable CPU PWM with LPT/SPT based
	 * systems, it may have been enabled prior to loading the
	 * driver. Disable to avoid warnings on LCPLL disable.
	 *
	 * This needs rework if we need to add support for CPU PWM on PCH split
	 * platforms.
	 */
	tmp = FUNC1(BLC_PWM_CPU_CTL2);
	if (tmp & BLM_PWM_ENABLE) {
		FUNC0("cpu backlight was enabled, disabling\n");
		FUNC2(BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
	}

	tmp = FUNC1(BLC_PWM_PCH_CTL1);
	FUNC2(BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
}