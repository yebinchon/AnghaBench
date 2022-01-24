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
typedef  int u8 ;
typedef  int u32 ;
struct intel_dp {int* train_set; int DP; int /*<<< orphan*/  output_reg; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int DDI_BUF_EMP_MASK ; 
 int DP_PRE_EMPHASIS_MASK ; 
 int DP_TRAIN_PRE_EMPHASIS_MASK ; 
 int DP_TRAIN_PRE_EMPHASIS_SHIFT ; 
 int DP_TRAIN_VOLTAGE_SWING_MASK ; 
 int DP_VOLTAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EDP_LINK_TRAIN_VOL_EMP_MASK_IVB ; 
 int EDP_LINK_TRAIN_VOL_EMP_MASK_SNB ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int PORT_A ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct intel_dp*) ; 
 int FUNC11 (struct intel_dp*) ; 
 int FUNC12 (struct intel_dp*) ; 
 struct intel_digital_port* FUNC13 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC14 (struct intel_dp*) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (struct intel_dp*) ; 

void
FUNC19(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC14(intel_dp);
	struct intel_digital_port *intel_dig_port = FUNC13(intel_dp);
	enum port port = intel_dig_port->base.port;
	u32 signal_levels, mask = 0;
	u8 train_set = intel_dp->train_set[0];

	if (FUNC6(dev_priv) || FUNC3(dev_priv) >= 10) {
		signal_levels = FUNC10(intel_dp);
	} else if (FUNC1(dev_priv)) {
		signal_levels = FUNC12(intel_dp);
		mask = DDI_BUF_EMP_MASK;
	} else if (FUNC4(dev_priv)) {
		signal_levels = FUNC11(intel_dp);
	} else if (FUNC8(dev_priv)) {
		signal_levels = FUNC18(intel_dp);
	} else if (FUNC7(dev_priv) && port == PORT_A) {
		signal_levels = FUNC16(train_set);
		mask = EDP_LINK_TRAIN_VOL_EMP_MASK_IVB;
	} else if (FUNC5(dev_priv, 6) && port == PORT_A) {
		signal_levels = FUNC17(train_set);
		mask = EDP_LINK_TRAIN_VOL_EMP_MASK_SNB;
	} else {
		signal_levels = FUNC15(train_set);
		mask = DP_VOLTAGE_MASK | DP_PRE_EMPHASIS_MASK;
	}

	if (mask)
		FUNC0("Using signal levels %08x\n", signal_levels);

	FUNC0("Using vswing level %d\n",
		train_set & DP_TRAIN_VOLTAGE_SWING_MASK);
	FUNC0("Using pre-emphasis level %d\n",
		(train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
			DP_TRAIN_PRE_EMPHASIS_SHIFT);

	intel_dp->DP = (intel_dp->DP & ~mask) | signal_levels;

	FUNC2(intel_dp->output_reg, intel_dp->DP);
	FUNC9(intel_dp->output_reg);
}