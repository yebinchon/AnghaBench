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
struct TYPE_2__ {int /*<<< orphan*/  pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC_PMIC_PWM_PERIOD_NS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct intel_connector *connector)
{
	struct intel_panel *panel = &connector->panel;
	int duty_ns;

	duty_ns = FUNC1(panel->backlight.pwm);
	return FUNC0(duty_ns * 100, CRC_PMIC_PWM_PERIOD_NS);
}