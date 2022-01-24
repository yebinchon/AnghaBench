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
struct intel_encoder {int /*<<< orphan*/  port; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer; int /*<<< orphan*/  name; } ;
struct intel_dp {TYPE_1__ aux; int /*<<< orphan*/  get_aux_send_ctl; int /*<<< orphan*/  get_aux_clock_divider; int /*<<< orphan*/  aux_ch_data_reg; int /*<<< orphan*/  aux_ch_ctl_reg; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 struct intel_digital_port* FUNC4 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  g4x_aux_ctl_reg ; 
 int /*<<< orphan*/  g4x_aux_data_reg ; 
 int /*<<< orphan*/  g4x_get_aux_clock_divider ; 
 int /*<<< orphan*/  g4x_get_aux_send_ctl ; 
 int /*<<< orphan*/  hsw_get_aux_clock_divider ; 
 int /*<<< orphan*/  ilk_aux_ctl_reg ; 
 int /*<<< orphan*/  ilk_aux_data_reg ; 
 int /*<<< orphan*/  ilk_get_aux_clock_divider ; 
 int /*<<< orphan*/  intel_dp_aux_transfer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skl_aux_ctl_reg ; 
 int /*<<< orphan*/  skl_aux_data_reg ; 
 int /*<<< orphan*/  skl_get_aux_clock_divider ; 
 int /*<<< orphan*/  skl_get_aux_send_ctl ; 

__attribute__((used)) static void
FUNC9(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC5(intel_dp);
	struct intel_digital_port *dig_port = FUNC4(intel_dp);
	struct intel_encoder *encoder = &dig_port->base;

	if (FUNC1(dev_priv) >= 9) {
		intel_dp->aux_ch_ctl_reg = skl_aux_ctl_reg;
		intel_dp->aux_ch_data_reg = skl_aux_data_reg;
	} else if (FUNC0(dev_priv)) {
		intel_dp->aux_ch_ctl_reg = ilk_aux_ctl_reg;
		intel_dp->aux_ch_data_reg = ilk_aux_data_reg;
	} else {
		intel_dp->aux_ch_ctl_reg = g4x_aux_ctl_reg;
		intel_dp->aux_ch_data_reg = g4x_aux_data_reg;
	}

	if (FUNC1(dev_priv) >= 9)
		intel_dp->get_aux_clock_divider = skl_get_aux_clock_divider;
	else if (FUNC2(dev_priv) || FUNC3(dev_priv))
		intel_dp->get_aux_clock_divider = hsw_get_aux_clock_divider;
	else if (FUNC0(dev_priv))
		intel_dp->get_aux_clock_divider = ilk_get_aux_clock_divider;
	else
		intel_dp->get_aux_clock_divider = g4x_get_aux_clock_divider;

	if (FUNC1(dev_priv) >= 9)
		intel_dp->get_aux_send_ctl = skl_get_aux_send_ctl;
	else
		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;

	FUNC6(&intel_dp->aux);

	/* Failure to allocate our preferred name is not critical */
	intel_dp->aux.name = FUNC7(GFP_KERNEL, "DPDDC-%c",
				       FUNC8(encoder->port));
	intel_dp->aux.transfer = intel_dp_aux_transfer;
}