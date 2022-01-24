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
typedef  int /*<<< orphan*/  u8 ;
struct intel_dp {int /*<<< orphan*/  output_reg; int /*<<< orphan*/  DP; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC3 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct intel_dp *intel_dp,
				       u8 dp_train_pat)
{
	struct intel_digital_port *intel_dig_port = FUNC3(intel_dp);
	struct drm_i915_private *dev_priv =
		FUNC4(intel_dig_port->base.base.dev);

	FUNC2(intel_dp, &intel_dp->DP, dp_train_pat);

	FUNC0(intel_dp->output_reg, intel_dp->DP);
	FUNC1(intel_dp->output_reg);
}