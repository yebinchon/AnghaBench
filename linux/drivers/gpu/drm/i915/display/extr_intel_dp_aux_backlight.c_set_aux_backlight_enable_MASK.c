#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct intel_dp {int* edp_dpcd; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int DP_EDP_BACKLIGHT_AUX_ENABLE_CAP ; 
 int /*<<< orphan*/  DP_EDP_BACKLIGHT_ENABLE ; 
 char* DP_EDP_DISPLAY_CONTROL_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct intel_dp *intel_dp, bool enable)
{
	u8 reg_val = 0;

	/* Early return when display use other mechanism to enable backlight. */
	if (!(intel_dp->edp_dpcd[1] & DP_EDP_BACKLIGHT_AUX_ENABLE_CAP))
		return;

	if (FUNC1(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
			      &reg_val) < 0) {
		FUNC0("Failed to read DPCD register 0x%x\n",
			      DP_EDP_DISPLAY_CONTROL_REGISTER);
		return;
	}
	if (enable)
		reg_val |= DP_EDP_BACKLIGHT_ENABLE;
	else
		reg_val &= ~(DP_EDP_BACKLIGHT_ENABLE);

	if (FUNC2(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
			       reg_val) != 1) {
		FUNC0("Failed to %s aux backlight\n",
			      enable ? "enable" : "disable");
	}
}