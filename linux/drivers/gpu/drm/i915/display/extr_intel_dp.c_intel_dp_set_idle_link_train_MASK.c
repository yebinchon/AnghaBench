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
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int dummy; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_IDLE ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DP_TP_STATUS_IDLE_DONE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PORT_A ; 
 struct intel_digital_port* FUNC6 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC7 (struct intel_dp*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC7(intel_dp);
	struct intel_digital_port *intel_dig_port = FUNC6(intel_dp);
	enum port port = intel_dig_port->base.port;
	u32 val;

	if (!FUNC3(dev_priv))
		return;

	val = FUNC4(FUNC0(port));
	val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
	val |= DP_TP_CTL_LINK_TRAIN_IDLE;
	FUNC5(FUNC0(port), val);

	/*
	 * On PORT_A we can have only eDP in SST mode. There the only reason
	 * we need to set idle transmission mode is to work around a HW issue
	 * where we enable the pipe while not in idle link-training mode.
	 * In this case there is requirement to wait for a minimum number of
	 * idle patterns to be sent.
	 */
	if (port == PORT_A)
		return;

	if (FUNC8(dev_priv, FUNC1(port),
				  DP_TP_STATUS_IDLE_DONE, 1))
		FUNC2("Timed out waiting for DP idle patterns\n");
}