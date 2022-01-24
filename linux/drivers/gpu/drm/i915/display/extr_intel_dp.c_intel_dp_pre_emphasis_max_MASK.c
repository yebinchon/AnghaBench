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
struct intel_encoder {int port; } ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct intel_encoder base; } ;

/* Variables and functions */
 int DP_TRAIN_PRE_EMPH_LEVEL_0 ; 
 int DP_TRAIN_PRE_EMPH_LEVEL_1 ; 
 int DP_TRAIN_PRE_EMPH_LEVEL_2 ; 
 int DP_TRAIN_PRE_EMPH_LEVEL_3 ; 
#define  DP_TRAIN_VOLTAGE_SWING_LEVEL_0 131 
#define  DP_TRAIN_VOLTAGE_SWING_LEVEL_1 130 
#define  DP_TRAIN_VOLTAGE_SWING_LEVEL_2 129 
#define  DP_TRAIN_VOLTAGE_SWING_LEVEL_3 128 
 int DP_TRAIN_VOLTAGE_SWING_MASK ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int PORT_A ; 
 TYPE_1__* FUNC4 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC5 (struct intel_dp*) ; 
 int FUNC6 (struct intel_encoder*,int) ; 

u8
FUNC7(struct intel_dp *intel_dp, u8 voltage_swing)
{
	struct drm_i915_private *dev_priv = FUNC5(intel_dp);
	struct intel_encoder *encoder = &FUNC4(intel_dp)->base;
	enum port port = encoder->port;

	if (FUNC0(dev_priv)) {
		return FUNC6(encoder, voltage_swing);
	} else if (FUNC3(dev_priv) || FUNC1(dev_priv)) {
		switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
			return DP_TRAIN_PRE_EMPH_LEVEL_3;
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
			return DP_TRAIN_PRE_EMPH_LEVEL_2;
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
			return DP_TRAIN_PRE_EMPH_LEVEL_1;
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
		default:
			return DP_TRAIN_PRE_EMPH_LEVEL_0;
		}
	} else if (FUNC2(dev_priv) && port == PORT_A) {
		switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
			return DP_TRAIN_PRE_EMPH_LEVEL_2;
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
			return DP_TRAIN_PRE_EMPH_LEVEL_1;
		default:
			return DP_TRAIN_PRE_EMPH_LEVEL_0;
		}
	} else {
		switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
			return DP_TRAIN_PRE_EMPH_LEVEL_2;
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
			return DP_TRAIN_PRE_EMPH_LEVEL_2;
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
			return DP_TRAIN_PRE_EMPH_LEVEL_1;
		case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
		default:
			return DP_TRAIN_PRE_EMPH_LEVEL_0;
		}
	}
}