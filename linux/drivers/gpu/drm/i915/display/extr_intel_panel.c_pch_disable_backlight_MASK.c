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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct drm_connector_state *old_conn_state)
{
	struct intel_connector *connector = FUNC4(old_conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC3(connector->base.dev);
	u32 tmp;

	FUNC2(old_conn_state, 0);

	tmp = FUNC0(BLC_PWM_CPU_CTL2);
	FUNC1(BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);

	tmp = FUNC0(BLC_PWM_PCH_CTL1);
	FUNC1(BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
}