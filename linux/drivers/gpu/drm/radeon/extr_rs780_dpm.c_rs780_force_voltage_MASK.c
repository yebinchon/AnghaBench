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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct igp_ps {scalar_t__ max_voltage; scalar_t__ min_voltage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCE_STARTING_PWM_HIGHTIME ; 
 int /*<<< orphan*/  FVTHROT_PWM_CTRL_REG0 ; 
 int /*<<< orphan*/  FVTHROT_PWM_FEEDBACK_DIV_REG1 ; 
 int /*<<< orphan*/  GFX_MACRO_BYPASS_CNTL ; 
 int /*<<< orphan*/  RANGE_PWM_FEEDBACK_DIV_EN ; 
 scalar_t__ RS780_VDDC_LEVEL_HIGH ; 
 int /*<<< orphan*/  SPLL_BYPASS_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STARTING_PWM_HIGHTIME_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct igp_ps* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev, u16 voltage)
{
	struct igp_ps *current_state = FUNC2(rdev->pm.dpm.current_ps);

	if ((current_state->max_voltage == RS780_VDDC_LEVEL_HIGH) &&
	    (current_state->min_voltage == RS780_VDDC_LEVEL_HIGH))
		return;

	FUNC1(GFX_MACRO_BYPASS_CNTL, SPLL_BYPASS_CNTL, ~SPLL_BYPASS_CNTL);

	FUNC3(1);

	FUNC1(FVTHROT_PWM_CTRL_REG0,
		 FUNC0(voltage),
		 ~STARTING_PWM_HIGHTIME_MASK);

	FUNC1(FVTHROT_PWM_CTRL_REG0,
		 FORCE_STARTING_PWM_HIGHTIME, ~FORCE_STARTING_PWM_HIGHTIME);

	FUNC1(FVTHROT_PWM_FEEDBACK_DIV_REG1, 0,
		~RANGE_PWM_FEEDBACK_DIV_EN);

	FUNC3(1);

	FUNC1(GFX_MACRO_BYPASS_CNTL, 0, ~SPLL_BYPASS_CNTL);
}