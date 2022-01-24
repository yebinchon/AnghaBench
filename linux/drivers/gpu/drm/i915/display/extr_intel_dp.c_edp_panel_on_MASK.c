#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int /*<<< orphan*/  last_power_on; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  PANEL_POWER_ON ; 
 int /*<<< orphan*/  PANEL_POWER_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 TYPE_2__* FUNC6 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC15(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC7(intel_dp);
	u32 pp;
	i915_reg_t pp_ctrl_reg;

	FUNC11(&dev_priv->pps_mutex);

	if (!FUNC9(intel_dp))
		return;

	FUNC0("Turn eDP port %c panel power on\n",
		      FUNC12(FUNC6(intel_dp)->base.port));

	if (FUNC4(FUNC8(intel_dp),
		 "eDP port %c panel power already on\n",
		 FUNC12(FUNC6(intel_dp)->base.port)))
		return;

	FUNC14(intel_dp);

	pp_ctrl_reg = FUNC5(intel_dp);
	pp = FUNC10(intel_dp);
	if (FUNC2(dev_priv, 5)) {
		/* ILK workaround: disable reset around power sequence */
		pp &= ~PANEL_POWER_RESET;
		FUNC1(pp_ctrl_reg, pp);
		FUNC3(pp_ctrl_reg);
	}

	pp |= PANEL_POWER_ON;
	if (!FUNC2(dev_priv, 5))
		pp |= PANEL_POWER_RESET;

	FUNC1(pp_ctrl_reg, pp);
	FUNC3(pp_ctrl_reg);

	FUNC13(intel_dp);
	intel_dp->last_power_on = jiffies;

	if (FUNC2(dev_priv, 5)) {
		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
		FUNC1(pp_ctrl_reg, pp);
		FUNC3(pp_ctrl_reg);
	}
}