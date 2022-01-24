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
struct TYPE_2__ {scalar_t__ alternate_pwm_increment; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(struct intel_connector *connector, u32 pwm_freq_hz)
{
	struct intel_panel *panel = &connector->panel;
	u32 mul;

	if (panel->backlight.alternate_pwm_increment)
		mul = 128;
	else
		mul = 16;

	return FUNC0(FUNC1(24), pwm_freq_hz * mul);
}