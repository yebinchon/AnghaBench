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
struct intel_dp {int want_panel_vdd; int /*<<< orphan*/  panel_power_up_delay; int /*<<< orphan*/  panel_vdd_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  EDP_FORCE_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct intel_digital_port* FUNC7 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 scalar_t__ FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_dp*) ; 

__attribute__((used)) static bool FUNC19(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC8(intel_dp);
	struct intel_digital_port *intel_dig_port = FUNC7(intel_dp);
	u32 pp;
	i915_reg_t pp_stat_reg, pp_ctrl_reg;
	bool need_to_disable = !intel_dp->want_panel_vdd;

	FUNC15(&dev_priv->pps_mutex);

	if (!FUNC13(intel_dp))
		return false;

	FUNC6(&intel_dp->panel_vdd_work);
	intel_dp->want_panel_vdd = true;

	if (FUNC10(intel_dp))
		return need_to_disable;

	FUNC12(dev_priv,
				FUNC11(intel_dig_port));

	FUNC0("Turning eDP port %c VDD on\n",
		      FUNC17(intel_dig_port->base.port));

	if (!FUNC9(intel_dp))
		FUNC18(intel_dp);

	pp = FUNC14(intel_dp);
	pp |= EDP_FORCE_VDD;

	pp_stat_reg = FUNC5(intel_dp);
	pp_ctrl_reg = FUNC4(intel_dp);

	FUNC2(pp_ctrl_reg, pp);
	FUNC3(pp_ctrl_reg);
	FUNC0("PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
			FUNC1(pp_stat_reg), FUNC1(pp_ctrl_reg));
	/*
	 * If the panel wasn't on, delay before accessing aux channel
	 */
	if (!FUNC9(intel_dp)) {
		FUNC0("eDP port %c panel power wasn't enabled\n",
			      FUNC17(intel_dig_port->base.port));
		FUNC16(intel_dp->panel_power_up_delay);
	}

	return need_to_disable;
}