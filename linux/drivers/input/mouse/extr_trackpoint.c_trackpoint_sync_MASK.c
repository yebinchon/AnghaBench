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
struct trackpoint_data {scalar_t__ variant_id; } ;
struct psmouse {int /*<<< orphan*/  ps2dev; struct trackpoint_data* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP_DEF_MB ; 
 int /*<<< orphan*/  TP_DEF_SOURCE_TAG ; 
 int /*<<< orphan*/  TP_DEF_TWOHAND ; 
 int /*<<< orphan*/  TP_MASK_MB ; 
 int /*<<< orphan*/  TP_MASK_SOURCE_TAG ; 
 int /*<<< orphan*/  TP_MASK_TWOHAND ; 
 int /*<<< orphan*/  TP_TOGGLE_MB ; 
 int /*<<< orphan*/  TP_TOGGLE_SOURCE_TAG ; 
 int /*<<< orphan*/  TP_TOGGLE_TWOHAND ; 
 scalar_t__ TP_VARIANT_IBM ; 
 int /*<<< orphan*/  FUNC0 (int,struct psmouse*,struct trackpoint_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  draghys ; 
 int /*<<< orphan*/  drift_time ; 
 int /*<<< orphan*/  ext_dev ; 
 int /*<<< orphan*/  inertia ; 
 int /*<<< orphan*/  jenks ; 
 int /*<<< orphan*/  mindrag ; 
 int /*<<< orphan*/  press_to_select ; 
 int /*<<< orphan*/  reach ; 
 int /*<<< orphan*/  sensitivity ; 
 int /*<<< orphan*/  skipback ; 
 int /*<<< orphan*/  speed ; 
 int /*<<< orphan*/  thresh ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  upthresh ; 
 int /*<<< orphan*/  ztime ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse, bool in_power_on_state)
{
	struct trackpoint_data *tp = psmouse->private;

	if (!in_power_on_state && tp->variant_id == TP_VARIANT_IBM) {
		/*
		 * Disable features that may make device unusable
		 * with this driver.
		 */
		FUNC1(&psmouse->ps2dev, TP_TOGGLE_TWOHAND,
				      TP_MASK_TWOHAND, TP_DEF_TWOHAND);

		FUNC1(&psmouse->ps2dev, TP_TOGGLE_SOURCE_TAG,
				      TP_MASK_SOURCE_TAG, TP_DEF_SOURCE_TAG);

		FUNC1(&psmouse->ps2dev, TP_TOGGLE_MB,
				      TP_MASK_MB, TP_DEF_MB);
	}

	/*
	 * These properties can be changed in this driver. Only
	 * configure them if the values are non-default or if the TP is in
	 * an unknown state.
	 */
	FUNC0(in_power_on_state, psmouse, tp, sensitivity);
	FUNC0(in_power_on_state, psmouse, tp, inertia);
	FUNC0(in_power_on_state, psmouse, tp, speed);
	FUNC0(in_power_on_state, psmouse, tp, reach);
	FUNC0(in_power_on_state, psmouse, tp, draghys);
	FUNC0(in_power_on_state, psmouse, tp, mindrag);
	FUNC0(in_power_on_state, psmouse, tp, thresh);
	FUNC0(in_power_on_state, psmouse, tp, upthresh);
	FUNC0(in_power_on_state, psmouse, tp, ztime);
	FUNC0(in_power_on_state, psmouse, tp, jenks);
	FUNC0(in_power_on_state, psmouse, tp, drift_time);

	/* toggles */
	FUNC0(in_power_on_state, psmouse, tp, press_to_select);
	FUNC0(in_power_on_state, psmouse, tp, skipback);
	FUNC0(in_power_on_state, psmouse, tp, ext_dev);

	return 0;
}