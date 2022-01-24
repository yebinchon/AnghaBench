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
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int /*<<< orphan*/  dpcd; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int DP_LINK_SCRAMBLING_DISABLE ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_MASK ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_MASK_CPT ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_OFF ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_OFF_CPT ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_PAT_1 ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_PAT_1_CPT ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_PAT_2 ; 
 int /*<<< orphan*/  DP_LINK_TRAIN_PAT_2_CPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_MASK ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_NORMAL ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_PAT1 ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_PAT2 ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_PAT3 ; 
 int /*<<< orphan*/  DP_TP_CTL_LINK_TRAIN_PAT4 ; 
 int /*<<< orphan*/  DP_TP_CTL_SCRAMBLE_DISABLE ; 
#define  DP_TRAINING_PATTERN_1 132 
#define  DP_TRAINING_PATTERN_2 131 
#define  DP_TRAINING_PATTERN_3 130 
#define  DP_TRAINING_PATTERN_4 129 
#define  DP_TRAINING_PATTERN_DISABLE 128 
 int DP_TRAINING_PATTERN_MASK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int PORT_A ; 
 struct intel_digital_port* FUNC7 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC8 (struct intel_dp*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct intel_dp *intel_dp,
			 u32 *DP,
			 u8 dp_train_pat)
{
	struct drm_i915_private *dev_priv = FUNC8(intel_dp);
	struct intel_digital_port *intel_dig_port = FUNC7(intel_dp);
	enum port port = intel_dig_port->base.port;
	u8 train_pat_mask = FUNC9(intel_dp->dpcd);

	if (dp_train_pat & train_pat_mask)
		FUNC1("Using DP training pattern TPS%d\n",
			      dp_train_pat & train_pat_mask);

	if (FUNC2(dev_priv)) {
		u32 temp = FUNC4(FUNC0(port));

		if (dp_train_pat & DP_LINK_SCRAMBLING_DISABLE)
			temp |= DP_TP_CTL_SCRAMBLE_DISABLE;
		else
			temp &= ~DP_TP_CTL_SCRAMBLE_DISABLE;

		temp &= ~DP_TP_CTL_LINK_TRAIN_MASK;
		switch (dp_train_pat & train_pat_mask) {
		case DP_TRAINING_PATTERN_DISABLE:
			temp |= DP_TP_CTL_LINK_TRAIN_NORMAL;

			break;
		case DP_TRAINING_PATTERN_1:
			temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
			break;
		case DP_TRAINING_PATTERN_2:
			temp |= DP_TP_CTL_LINK_TRAIN_PAT2;
			break;
		case DP_TRAINING_PATTERN_3:
			temp |= DP_TP_CTL_LINK_TRAIN_PAT3;
			break;
		case DP_TRAINING_PATTERN_4:
			temp |= DP_TP_CTL_LINK_TRAIN_PAT4;
			break;
		}
		FUNC5(FUNC0(port), temp);

	} else if ((FUNC6(dev_priv) && port == PORT_A) ||
		   (FUNC3(dev_priv) && port != PORT_A)) {
		*DP &= ~DP_LINK_TRAIN_MASK_CPT;

		switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
		case DP_TRAINING_PATTERN_DISABLE:
			*DP |= DP_LINK_TRAIN_OFF_CPT;
			break;
		case DP_TRAINING_PATTERN_1:
			*DP |= DP_LINK_TRAIN_PAT_1_CPT;
			break;
		case DP_TRAINING_PATTERN_2:
			*DP |= DP_LINK_TRAIN_PAT_2_CPT;
			break;
		case DP_TRAINING_PATTERN_3:
			FUNC1("TPS3 not supported, using TPS2 instead\n");
			*DP |= DP_LINK_TRAIN_PAT_2_CPT;
			break;
		}

	} else {
		*DP &= ~DP_LINK_TRAIN_MASK;

		switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
		case DP_TRAINING_PATTERN_DISABLE:
			*DP |= DP_LINK_TRAIN_OFF;
			break;
		case DP_TRAINING_PATTERN_1:
			*DP |= DP_LINK_TRAIN_PAT_1;
			break;
		case DP_TRAINING_PATTERN_2:
			*DP |= DP_LINK_TRAIN_PAT_2;
			break;
		case DP_TRAINING_PATTERN_3:
			FUNC1("TPS3 not supported, using TPS2 instead\n");
			*DP |= DP_LINK_TRAIN_PAT_2;
			break;
		}
	}
}