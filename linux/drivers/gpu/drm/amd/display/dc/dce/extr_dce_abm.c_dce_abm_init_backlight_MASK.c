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
typedef  int uint32_t ;
struct dce_abm {int dummy; } ;
struct TYPE_2__ {scalar_t__ BL_PWM_CNTL; int BL_PWM_CNTL2; int BL_PWM_PERIOD_CNTL; int LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV; } ;
struct abm {TYPE_1__ stored_backlight_registers; } ;

/* Variables and functions */
 int ATOM_S2_VRI_BRIGHT_ENABLE ; 
 int /*<<< orphan*/  BIOS_SCRATCH_2 ; 
 int /*<<< orphan*/  BL_ACTIVE_INT_FRAC_CNT ; 
 int /*<<< orphan*/  BL_PWM_CNTL ; 
 int /*<<< orphan*/  BL_PWM_CNTL2 ; 
 int /*<<< orphan*/  BL_PWM_EN ; 
 int /*<<< orphan*/  BL_PWM_GRP1_REG_LOCK ; 
 int /*<<< orphan*/  BL_PWM_PERIOD_CNTL ; 
 int /*<<< orphan*/  BL_PWM_REF_DIV ; 
 int /*<<< orphan*/  LVTMA_PWRSEQ_REF_DIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct dce_abm* FUNC4 (struct abm*) ; 

__attribute__((used)) static bool FUNC5(struct abm *abm)
{
	struct dce_abm *abm_dce = FUNC4(abm);
	uint32_t value;

	/* It must not be 0, so we have to restore them
	 * Bios bug w/a - period resets to zero,
	 * restoring to cache values which is always correct
	 */
	FUNC0(BL_PWM_CNTL, BL_ACTIVE_INT_FRAC_CNT, &value);
	if (value == 0 || value == 1) {
		if (abm->stored_backlight_registers.BL_PWM_CNTL != 0) {
			FUNC3(BL_PWM_CNTL,
				abm->stored_backlight_registers.BL_PWM_CNTL);
			FUNC3(BL_PWM_CNTL2,
				abm->stored_backlight_registers.BL_PWM_CNTL2);
			FUNC3(BL_PWM_PERIOD_CNTL,
				abm->stored_backlight_registers.BL_PWM_PERIOD_CNTL);
			FUNC2(LVTMA_PWRSEQ_REF_DIV,
				BL_PWM_REF_DIV,
				abm->stored_backlight_registers.
				LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV);
		} else {
			/* TODO: Note: This should not really happen since VBIOS
			 * should have initialized PWM registers on boot.
			 */
			FUNC3(BL_PWM_CNTL, 0xC000FA00);
			FUNC3(BL_PWM_PERIOD_CNTL, 0x000C0FA0);
		}
	} else {
		abm->stored_backlight_registers.BL_PWM_CNTL =
				FUNC1(BL_PWM_CNTL);
		abm->stored_backlight_registers.BL_PWM_CNTL2 =
				FUNC1(BL_PWM_CNTL2);
		abm->stored_backlight_registers.BL_PWM_PERIOD_CNTL =
				FUNC1(BL_PWM_PERIOD_CNTL);

		FUNC0(LVTMA_PWRSEQ_REF_DIV, BL_PWM_REF_DIV,
				&abm->stored_backlight_registers.
				LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV);
	}

	/* Have driver take backlight control
	 * TakeBacklightControl(true)
	 */
	value = FUNC1(BIOS_SCRATCH_2);
	value |= ATOM_S2_VRI_BRIGHT_ENABLE;
	FUNC3(BIOS_SCRATCH_2, value);

	/* Enable the backlight output */
	FUNC2(BL_PWM_CNTL, BL_PWM_EN, 1);

	/* Unlock group 2 backlight registers */
	FUNC2(BL_PWM_GRP1_REG_LOCK,
			BL_PWM_GRP1_REG_LOCK, 0);

	return true;
}