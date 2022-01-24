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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; int /*<<< orphan*/  type; TYPE_1__ base; } ;
struct intel_dp {int /*<<< orphan*/  link_rate; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int DP_TRAIN_VOLTAGE_SWING_MASK ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_EDP ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int*) ; 
 struct intel_dp* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int* icl_mg_phy_ddi_translations ; 
 int* index_to_dp_signal_levels ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,int*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*,int) ; 
 int FUNC14 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC15 (int /*<<< orphan*/ ) ; 

u8 FUNC16(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC15(encoder->base.dev);
	struct intel_dp *intel_dp = FUNC9(&encoder->base);
	enum port port = encoder->port;
	enum phy phy = FUNC14(dev_priv, port);
	int n_entries;

	if (FUNC1(dev_priv) >= 11) {
		if (FUNC13(dev_priv, phy))
			FUNC10(dev_priv, encoder->type,
						intel_dp->link_rate, &n_entries);
		else
			n_entries = FUNC0(icl_mg_phy_ddi_translations);
	} else if (FUNC2(dev_priv)) {
		if (encoder->type == INTEL_OUTPUT_EDP)
			FUNC8(dev_priv, &n_entries);
		else
			FUNC7(dev_priv, &n_entries);
	} else if (FUNC3(dev_priv)) {
		if (encoder->type == INTEL_OUTPUT_EDP)
			FUNC6(dev_priv, &n_entries);
		else
			FUNC5(dev_priv, &n_entries);
	} else {
		if (encoder->type == INTEL_OUTPUT_EDP)
			FUNC12(dev_priv, port, &n_entries);
		else
			FUNC11(dev_priv, port, &n_entries);
	}

	if (FUNC4(n_entries < 1))
		n_entries = 1;
	if (FUNC4(n_entries > FUNC0(index_to_dp_signal_levels)))
		n_entries = FUNC0(index_to_dp_signal_levels);

	return index_to_dp_signal_levels[n_entries - 1] &
		DP_TRAIN_VOLTAGE_SWING_MASK;
}