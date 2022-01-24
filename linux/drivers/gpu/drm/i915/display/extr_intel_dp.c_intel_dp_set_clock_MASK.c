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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {scalar_t__ port_clock; int clock_set; int /*<<< orphan*/  dpll; } ;
struct drm_i915_private {int dummy; } ;
struct dp_link_dpll {scalar_t__ clock; int /*<<< orphan*/  dpll; } ;

/* Variables and functions */
 int FUNC0 (struct dp_link_dpll*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 struct dp_link_dpll* chv_dpll ; 
 struct dp_link_dpll* g4x_dpll ; 
 struct dp_link_dpll* pch_dpll ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct dp_link_dpll* vlv_dpll ; 

__attribute__((used)) static void
FUNC6(struct intel_encoder *encoder,
		   struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC5(encoder->base.dev);
	const struct dp_link_dpll *divisor = NULL;
	int i, count = 0;

	if (FUNC3(dev_priv)) {
		divisor = g4x_dpll;
		count = FUNC0(g4x_dpll);
	} else if (FUNC1(dev_priv)) {
		divisor = pch_dpll;
		count = FUNC0(pch_dpll);
	} else if (FUNC2(dev_priv)) {
		divisor = chv_dpll;
		count = FUNC0(chv_dpll);
	} else if (FUNC4(dev_priv)) {
		divisor = vlv_dpll;
		count = FUNC0(vlv_dpll);
	}

	if (divisor && count) {
		for (i = 0; i < count; i++) {
			if (pipe_config->port_clock == divisor[i].clock) {
				pipe_config->dpll = divisor[i].dpll;
				pipe_config->clock_set = true;
				break;
			}
		}
	}
}