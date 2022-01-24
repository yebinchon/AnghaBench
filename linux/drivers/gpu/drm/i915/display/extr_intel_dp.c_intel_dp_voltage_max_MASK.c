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
typedef  int /*<<< orphan*/  u8 ;
struct intel_encoder {int port; } ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct intel_encoder base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TRAIN_VOLTAGE_SWING_LEVEL_2 ; 
 int /*<<< orphan*/  DP_TRAIN_VOLTAGE_SWING_LEVEL_3 ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int PORT_A ; 
 TYPE_1__* FUNC5 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_encoder*) ; 

u8
FUNC8(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC6(intel_dp);
	struct intel_encoder *encoder = &FUNC5(intel_dp)->base;
	enum port port = encoder->port;

	if (FUNC0(dev_priv))
		return FUNC7(encoder);
	else if (FUNC4(dev_priv) || FUNC2(dev_priv))
		return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
	else if (FUNC3(dev_priv) && port == PORT_A)
		return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
	else if (FUNC1(dev_priv) && port != PORT_A)
		return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
	else
		return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
}