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
struct intel_dp {int /*<<< orphan*/  output_reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int DP_PORT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_dp *intel_dp, bool state)
{
	struct intel_digital_port *dig_port = FUNC2(intel_dp);
	struct drm_i915_private *dev_priv = FUNC5(dig_port->base.base.dev);
	bool cur_state = FUNC0(intel_dp->output_reg) & DP_PORT_EN;

	FUNC1(cur_state != state,
			"DP port %c state assertion failure (expected %s, current %s)\n",
			FUNC4(dig_port->base.port),
			FUNC3(state), FUNC3(cur_state));
}