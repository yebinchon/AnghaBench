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
struct intel_dp {int DP; int /*<<< orphan*/  dpcd; scalar_t__ link_mst; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_BUF_CTL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DP_TP_CTL_ENABLE ; 
 int DP_TP_CTL_ENHANCED_FRAME_ENABLE ; 
 int DP_TP_CTL_LINK_TRAIN_MASK ; 
 int DP_TP_CTL_LINK_TRAIN_PAT1 ; 
 int DP_TP_CTL_MODE_MST ; 
 int DP_TP_CTL_MODE_SST ; 
 int DP_TP_CTL_SCRAMBLE_DISABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC5 (struct intel_dp*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC5(intel_dp);
	struct drm_i915_private *dev_priv =
		FUNC8(intel_dig_port->base.base.dev);
	enum port port = intel_dig_port->base.port;
	u32 val;
	bool wait = false;

	if (FUNC2(FUNC1(port)) & DP_TP_CTL_ENABLE) {
		val = FUNC2(FUNC0(port));
		if (val & DDI_BUF_CTL_ENABLE) {
			val &= ~DDI_BUF_CTL_ENABLE;
			FUNC3(FUNC0(port), val);
			wait = true;
		}

		val = FUNC2(FUNC1(port));
		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
		FUNC3(FUNC1(port), val);
		FUNC4(FUNC1(port));

		if (wait)
			FUNC7(dev_priv, port);
	}

	val = DP_TP_CTL_ENABLE |
	      DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;
	if (intel_dp->link_mst)
		val |= DP_TP_CTL_MODE_MST;
	else {
		val |= DP_TP_CTL_MODE_SST;
		if (FUNC6(intel_dp->dpcd))
			val |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
	}
	FUNC3(FUNC1(port), val);
	FUNC4(FUNC1(port));

	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
	FUNC3(FUNC0(port), intel_dp->DP);
	FUNC4(FUNC0(port));

	FUNC9(600);
}