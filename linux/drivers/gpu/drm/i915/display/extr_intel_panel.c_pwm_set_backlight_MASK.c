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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;
struct TYPE_4__ {struct intel_panel panel; } ;

/* Variables and functions */
 int CRC_PMIC_PWM_PERIOD_NS ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct drm_connector_state *conn_state, u32 level)
{
	struct intel_panel *panel = &FUNC2(conn_state->connector)->panel;
	int duty_ns = FUNC0(level * CRC_PMIC_PWM_PERIOD_NS, 100);

	FUNC1(panel->backlight.pwm, duty_ns, CRC_PMIC_PWM_PERIOD_NS);
}