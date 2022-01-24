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
struct wf_fcu_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCU_FAN_PWM ; 
 int /*<<< orphan*/  FCU_FAN_RPM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wf_fcu_priv*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct wf_fcu_priv *pv)
{
	/* We only support the default fans for PowerMac7,2 */
	if (!FUNC0("PowerMac7,2"))
		return;

	FUNC1(pv, "backside-fan",	FCU_FAN_PWM, 1);
	FUNC1(pv, "drive-bay-fan",	FCU_FAN_RPM, 2);
	FUNC1(pv, "slots-fan",		FCU_FAN_PWM, 2);
	FUNC1(pv, "cpu-front-fan-0",	FCU_FAN_RPM, 3);
	FUNC1(pv, "cpu-rear-fan-0",	FCU_FAN_RPM, 4);
	FUNC1(pv, "cpu-front-fan-1",	FCU_FAN_RPM, 5);
	FUNC1(pv, "cpu-rear-fan-1",	FCU_FAN_RPM, 6);
}