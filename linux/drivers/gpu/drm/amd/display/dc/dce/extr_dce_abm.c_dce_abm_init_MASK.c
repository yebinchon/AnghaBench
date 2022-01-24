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
struct dce_abm {int dummy; } ;
struct abm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABM1_BL_REG_READ_MISSED_FRAME_CLEAR ; 
 int /*<<< orphan*/  ABM1_HG_BIN_BITWIDTH_SIZE_SEL ; 
 int /*<<< orphan*/  ABM1_HG_NUM_OF_BINS_SEL ; 
 int /*<<< orphan*/  ABM1_HG_REG_READ_MISSED_FRAME_CLEAR ; 
 int /*<<< orphan*/  ABM1_HG_VMAX_SEL ; 
 int /*<<< orphan*/  ABM1_IPCSC_COEFF_SEL_B ; 
 int /*<<< orphan*/  ABM1_IPCSC_COEFF_SEL_G ; 
 int /*<<< orphan*/  ABM1_IPCSC_COEFF_SEL_R ; 
 int /*<<< orphan*/  ABM1_LS_MAX_PIXEL_VALUE_THRES ; 
 int /*<<< orphan*/  ABM1_LS_MIN_PIXEL_VALUE_THRES ; 
 int /*<<< orphan*/  ABM1_LS_REG_READ_MISSED_FRAME_CLEAR ; 
 int /*<<< orphan*/  BL1_PWM_BL_UPDATE_SAMPLE_RATE ; 
 int /*<<< orphan*/  BL1_PWM_CURRENT_ABM_LEVEL ; 
 int /*<<< orphan*/  BL1_PWM_TARGET_ABM_LEVEL ; 
 int /*<<< orphan*/  BL1_PWM_USER_LEVEL ; 
 int /*<<< orphan*/  DC_ABM1_HGLS_REG_READ_PROGRESS ; 
 int /*<<< orphan*/  DC_ABM1_HG_MISC_CTRL ; 
 int /*<<< orphan*/  DC_ABM1_HG_SAMPLE_RATE ; 
 int /*<<< orphan*/  DC_ABM1_IPCSC_COEFF_SEL ; 
 int /*<<< orphan*/  DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES ; 
 int /*<<< orphan*/  DC_ABM1_LS_SAMPLE_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct dce_abm* FUNC4 (struct abm*) ; 
 unsigned int FUNC5 (struct dce_abm*) ; 

__attribute__((used)) static void FUNC6(struct abm *abm)
{
	struct dce_abm *abm_dce = FUNC4(abm);
	unsigned int backlight = FUNC5(abm_dce);

	FUNC3(DC_ABM1_HG_SAMPLE_RATE, 0x103);
	FUNC3(DC_ABM1_HG_SAMPLE_RATE, 0x101);
	FUNC3(DC_ABM1_LS_SAMPLE_RATE, 0x103);
	FUNC3(DC_ABM1_LS_SAMPLE_RATE, 0x101);
	FUNC3(BL1_PWM_BL_UPDATE_SAMPLE_RATE, 0x101);

	FUNC0(DC_ABM1_HG_MISC_CTRL, 0,
			ABM1_HG_NUM_OF_BINS_SEL, 0,
			ABM1_HG_VMAX_SEL, 1,
			ABM1_HG_BIN_BITWIDTH_SIZE_SEL, 0);

	FUNC0(DC_ABM1_IPCSC_COEFF_SEL, 0,
			ABM1_IPCSC_COEFF_SEL_R, 2,
			ABM1_IPCSC_COEFF_SEL_G, 4,
			ABM1_IPCSC_COEFF_SEL_B, 2);

	FUNC1(BL1_PWM_CURRENT_ABM_LEVEL,
			BL1_PWM_CURRENT_ABM_LEVEL, backlight);

	FUNC1(BL1_PWM_TARGET_ABM_LEVEL,
			BL1_PWM_TARGET_ABM_LEVEL, backlight);

	FUNC1(BL1_PWM_USER_LEVEL,
			BL1_PWM_USER_LEVEL, backlight);

	FUNC2(DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES,
			ABM1_LS_MIN_PIXEL_VALUE_THRES, 0,
			ABM1_LS_MAX_PIXEL_VALUE_THRES, 1000);

	FUNC0(DC_ABM1_HGLS_REG_READ_PROGRESS, 0,
			ABM1_HG_REG_READ_MISSED_FRAME_CLEAR, 1,
			ABM1_LS_REG_READ_MISSED_FRAME_CLEAR, 1,
			ABM1_BL_REG_READ_MISSED_FRAME_CLEAR, 1);
}