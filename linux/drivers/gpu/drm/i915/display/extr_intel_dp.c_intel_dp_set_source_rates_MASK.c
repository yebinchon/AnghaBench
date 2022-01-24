#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_dp {int const* source_rates; int num_source_rates; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {size_t port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_3__ base; } ;
struct TYPE_5__ {struct ddi_vbt_port_info* ddi_port_info; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct ddi_vbt_port_info {int dp_max_link_rate; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct intel_dp*) ; 
 struct intel_digital_port* FUNC10 (struct intel_dp*) ; 
 int FUNC11 (struct intel_dp*) ; 
 int FUNC12 (int const*,int,int) ; 
 int FUNC13 (int,int) ; 
 struct drm_i915_private* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct intel_dp *intel_dp)
{
	/* The values must be in increasing order */
	static const int cnl_rates[] = {
		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
	};
	static const int bxt_rates[] = {
		162000, 216000, 243000, 270000, 324000, 432000, 540000
	};
	static const int skl_rates[] = {
		162000, 216000, 270000, 324000, 432000, 540000
	};
	static const int hsw_rates[] = {
		162000, 270000, 540000
	};
	static const int g4x_rates[] = {
		162000, 270000
	};
	struct intel_digital_port *dig_port = FUNC10(intel_dp);
	struct drm_i915_private *dev_priv = FUNC14(dig_port->base.base.dev);
	const struct ddi_vbt_port_info *info =
		&dev_priv->vbt.ddi_port_info[dig_port->base.port];
	const int *source_rates;
	int size, max_rate = 0, vbt_max_rate = info->dp_max_link_rate;

	/* This should only be done once */
	FUNC8(intel_dp->source_rates || intel_dp->num_source_rates);

	if (FUNC1(dev_priv) >= 10) {
		source_rates = cnl_rates;
		size = FUNC0(cnl_rates);
		if (FUNC3(dev_priv, 10))
			max_rate = FUNC9(intel_dp);
		else
			max_rate = FUNC11(intel_dp);
	} else if (FUNC5(dev_priv)) {
		source_rates = bxt_rates;
		size = FUNC0(bxt_rates);
	} else if (FUNC4(dev_priv)) {
		source_rates = skl_rates;
		size = FUNC0(skl_rates);
	} else if ((FUNC6(dev_priv) && !FUNC7(dev_priv)) ||
		   FUNC2(dev_priv)) {
		source_rates = hsw_rates;
		size = FUNC0(hsw_rates);
	} else {
		source_rates = g4x_rates;
		size = FUNC0(g4x_rates);
	}

	if (max_rate && vbt_max_rate)
		max_rate = FUNC13(max_rate, vbt_max_rate);
	else if (vbt_max_rate)
		max_rate = vbt_max_rate;

	if (max_rate)
		size = FUNC12(source_rates, size, max_rate);

	intel_dp->source_rates = source_rates;
	intel_dp->num_source_rates = size;
}