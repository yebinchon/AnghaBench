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
typedef  int uint32_t ;
struct dce_abm {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ATOM_S2_CURRENT_BL_LEVEL_MASK ; 
 int ATOM_S2_CURRENT_BL_LEVEL_SHIFT ; 
 int /*<<< orphan*/  BIOS_SCRATCH_2 ; 
 int /*<<< orphan*/  BL1_PWM_USER_LEVEL ; 
 int /*<<< orphan*/  MASTER_COMM_CMD_REG ; 
 int /*<<< orphan*/  MASTER_COMM_CMD_REG_BYTE0 ; 
 int /*<<< orphan*/  MASTER_COMM_CNTL_REG ; 
 int /*<<< orphan*/  MASTER_COMM_DATA_REG1 ; 
 int /*<<< orphan*/  MASTER_COMM_INTERRUPT ; 
 int MCP_BL_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(
	struct dce_abm *abm_dce,
	uint32_t backlight_pwm_u16_16,
	uint32_t frame_ramp,
	uint32_t controller_id)
{
	unsigned int backlight_8_bit = 0;
	uint32_t s2;

	if (backlight_pwm_u16_16 & 0x10000)
		// Check for max backlight condition
		backlight_8_bit = 0xFF;
	else
		// Take MSB of fractional part since backlight is not max
		backlight_8_bit = (backlight_pwm_u16_16 >> 8) & 0xFF;

	FUNC4(&abm_dce->base, controller_id);

	/* waitDMCUReadyForCmd */
	FUNC2(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT,
			0, 1, 80000);

	/* setDMCUParam_BL */
	FUNC1(BL1_PWM_USER_LEVEL, BL1_PWM_USER_LEVEL, backlight_pwm_u16_16);

	/* write ramp */
	if (controller_id == 0)
		frame_ramp = 0;
	FUNC3(MASTER_COMM_DATA_REG1, frame_ramp);

	/* setDMCUParam_Cmd */
	FUNC1(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0, MCP_BL_SET);

	/* notifyDMCUMsg */
	FUNC1(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);

	/* UpdateRequestedBacklightLevel */
	s2 = FUNC0(BIOS_SCRATCH_2);

	s2 &= ~ATOM_S2_CURRENT_BL_LEVEL_MASK;
	backlight_8_bit &= (ATOM_S2_CURRENT_BL_LEVEL_MASK >>
				ATOM_S2_CURRENT_BL_LEVEL_SHIFT);
	s2 |= (backlight_8_bit << ATOM_S2_CURRENT_BL_LEVEL_SHIFT);

	FUNC3(BIOS_SCRATCH_2, s2);

	/* waitDMCUReadyForCmd */
	FUNC2(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT,
			0, 1, 80000);
}