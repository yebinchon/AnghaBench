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
struct dce_abm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV; void* BL_PWM_PERIOD_CNTL; void* BL_PWM_CNTL2; void* BL_PWM_CNTL; } ;
struct abm {int dmcu_is_running; TYPE_1__ stored_backlight_registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  BL_PWM_CNTL ; 
 int /*<<< orphan*/  BL_PWM_CNTL2 ; 
 int /*<<< orphan*/  BL_PWM_PERIOD_CNTL ; 
 int /*<<< orphan*/  BL_PWM_REF_DIV ; 
 int /*<<< orphan*/  LVTMA_PWRSEQ_REF_DIV ; 
 int /*<<< orphan*/  MCP_DISABLE_ABM_IMMEDIATELY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dce_abm* FUNC2 (struct abm*) ; 
 int /*<<< orphan*/  FUNC3 (struct abm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct abm *abm)
{
	struct dce_abm *abm_dce = FUNC2(abm);

	if (abm->dmcu_is_running == false)
		return true;

	FUNC3(abm, MCP_DISABLE_ABM_IMMEDIATELY);

	abm->stored_backlight_registers.BL_PWM_CNTL =
		FUNC1(BL_PWM_CNTL);
	abm->stored_backlight_registers.BL_PWM_CNTL2 =
		FUNC1(BL_PWM_CNTL2);
	abm->stored_backlight_registers.BL_PWM_PERIOD_CNTL =
		FUNC1(BL_PWM_PERIOD_CNTL);

	FUNC0(LVTMA_PWRSEQ_REF_DIV, BL_PWM_REF_DIV,
		&abm->stored_backlight_registers.LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV);
	return true;
}