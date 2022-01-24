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
typedef  int u32 ;
struct intel_dp {int /*<<< orphan*/  panel_power_off_time; int /*<<< orphan*/  want_panel_vdd; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int EDP_FORCE_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PANEL_POWER_ON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 struct intel_digital_port* FUNC7 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC8(intel_dp);
	struct intel_digital_port *intel_dig_port =
		FUNC7(intel_dp);
	u32 pp;
	i915_reg_t pp_stat_reg, pp_ctrl_reg;

	FUNC14(&dev_priv->pps_mutex);

	FUNC4(intel_dp->want_panel_vdd);

	if (!FUNC9(intel_dp))
		return;

	FUNC0("Turning eDP port %c VDD off\n",
		      FUNC15(intel_dig_port->base.port));

	pp = FUNC12(intel_dp);
	pp &= ~EDP_FORCE_VDD;

	pp_ctrl_reg = FUNC5(intel_dp);
	pp_stat_reg = FUNC6(intel_dp);

	FUNC2(pp_ctrl_reg, pp);
	FUNC3(pp_ctrl_reg);

	/* Make sure sequencer is idle before allowing subsequent activity */
	FUNC0("PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
	FUNC1(pp_stat_reg), FUNC1(pp_ctrl_reg));

	if ((pp & PANEL_POWER_ON) == 0)
		intel_dp->panel_power_off_time = FUNC13();

	FUNC11(dev_priv,
					  FUNC10(intel_dig_port));
}