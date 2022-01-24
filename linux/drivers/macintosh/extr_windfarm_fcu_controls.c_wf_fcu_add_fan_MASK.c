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
struct wf_fcu_priv {int /*<<< orphan*/  ref; int /*<<< orphan*/  fan_list; } ;
struct TYPE_2__ {char const* name; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; struct wf_fcu_fan* priv; } ;
struct wf_fcu_fan {int id; int min; int max; int /*<<< orphan*/  link; TYPE_1__ ctrl; struct wf_fcu_priv* fcu_priv; } ;

/* Variables and functions */
 int FCU_FAN_RPM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WF_CONTROL_PWM_FAN ; 
 int /*<<< orphan*/  WF_CONTROL_RPM_FAN ; 
 int /*<<< orphan*/  FUNC0 (struct wf_fcu_fan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wf_fcu_fan* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wf_fcu_fan_pwm_ops ; 
 int /*<<< orphan*/  wf_fcu_fan_rpm_ops ; 
 int /*<<< orphan*/  FUNC7 (struct wf_fcu_fan*) ; 
 int /*<<< orphan*/  FUNC8 (struct wf_fcu_fan*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(struct wf_fcu_priv *pv, const char *name,
			   int type, int id)
{
	struct wf_fcu_fan *fan;

	fan = FUNC2(sizeof(*fan), GFP_KERNEL);
	if (!fan)
		return;
	fan->fcu_priv = pv;
	fan->id = id;
	fan->ctrl.name = name;
	fan->ctrl.priv = fan;

	/* min/max is oddball but the code comes from
	 * therm_pm72 which seems to work so ...
	 */
	if (type == FCU_FAN_RPM) {
		if (!FUNC6(name, "cpu-pump", FUNC5("cpu-pump")))
			FUNC7(fan);
		else
			FUNC8(fan);
		fan->ctrl.type = WF_CONTROL_RPM_FAN;
		fan->ctrl.ops = &wf_fcu_fan_rpm_ops;
	} else {
		fan->min = 10;
		fan->max = 100;
		fan->ctrl.type = WF_CONTROL_PWM_FAN;
		fan->ctrl.ops = &wf_fcu_fan_pwm_ops;
	}

	if (FUNC9(&fan->ctrl)) {
		FUNC4("wf_fcu: Failed to register fan %s\n", name);
		FUNC0(fan);
		return;
	}
	FUNC3(&fan->link, &pv->fan_list);
	FUNC1(&pv->ref);
}