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
struct intel_dp {int want_panel_vdd; int /*<<< orphan*/  panel_power_off_time; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EDP_BLC_ENABLE ; 
 int EDP_FORCE_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PANEL_POWER_ON ; 
 int PANEL_POWER_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 struct intel_digital_port* FUNC5 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC15(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC6(intel_dp);
	struct intel_digital_port *dig_port = FUNC5(intel_dp);
	u32 pp;
	i915_reg_t pp_ctrl_reg;

	FUNC12(&dev_priv->pps_mutex);

	if (!FUNC9(intel_dp))
		return;

	FUNC0("Turn eDP port %c panel power off\n",
		      FUNC13(dig_port->base.port));

	FUNC3(!intel_dp->want_panel_vdd, "Need eDP port %c VDD to turn off panel\n",
	     FUNC13(dig_port->base.port));

	pp = FUNC10(intel_dp);
	/* We need to switch off panel power _and_ force vdd, for otherwise some
	 * panels get very unhappy and cease to work. */
	pp &= ~(PANEL_POWER_ON | PANEL_POWER_RESET | EDP_FORCE_VDD |
		EDP_BLC_ENABLE);

	pp_ctrl_reg = FUNC4(intel_dp);

	intel_dp->want_panel_vdd = false;

	FUNC1(pp_ctrl_reg, pp);
	FUNC2(pp_ctrl_reg);

	FUNC14(intel_dp);
	intel_dp->panel_power_off_time = FUNC11();

	/* We got a reference when we enabled the VDD. */
	FUNC8(dev_priv, FUNC7(dig_port));
}