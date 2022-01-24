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
struct td028ttec1_panel {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JBT_REG_ASW_SLEW ; 
 int /*<<< orphan*/  JBT_REG_ASW_TIMING_1 ; 
 int /*<<< orphan*/  JBT_REG_ASW_TIMING_2 ; 
 int /*<<< orphan*/  JBT_REG_BLANK_CONTROL ; 
 int /*<<< orphan*/  JBT_REG_BLANK_TH_TV ; 
 int /*<<< orphan*/  JBT_REG_BOOSTER_FREQ ; 
 int /*<<< orphan*/  JBT_REG_BOOSTER_MODE ; 
 int /*<<< orphan*/  JBT_REG_BOOSTER_OP ; 
 int /*<<< orphan*/  JBT_REG_CKV_1_2 ; 
 int /*<<< orphan*/  JBT_REG_CKV_ON_OFF ; 
 int /*<<< orphan*/  JBT_REG_DCCLK_DCEV ; 
 int /*<<< orphan*/  JBT_REG_DISPLAY_MODE ; 
 int /*<<< orphan*/  JBT_REG_DISPLAY_MODE1 ; 
 int /*<<< orphan*/  JBT_REG_DISPLAY_MODE2 ; 
 int /*<<< orphan*/  JBT_REG_DRIVE_SYSTEM ; 
 int /*<<< orphan*/  JBT_REG_DUMMY_DISPLAY ; 
 int /*<<< orphan*/  JBT_REG_EXT_DISPL ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_BLUE_OFFSET ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_FINE_1 ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_FINE_2 ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_INCLINATION ; 
 int /*<<< orphan*/  JBT_REG_HCLOCK_VGA ; 
 int /*<<< orphan*/  JBT_REG_OEV_TIMING ; 
 int /*<<< orphan*/  JBT_REG_OPAMP_SYSCLK ; 
 int /*<<< orphan*/  JBT_REG_OUTPUT_CONTROL ; 
 int /*<<< orphan*/  JBT_REG_POWER_ON_OFF ; 
 int /*<<< orphan*/  JBT_REG_QUAD_RATE ; 
 int /*<<< orphan*/  JBT_REG_RGB_FORMAT ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_D ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_E ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_F ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_G ; 
 int JBT_REG_SLEEP_OUT ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_OUT_FR_A ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_OUT_FR_B ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_OUT_FR_C ; 
 int /*<<< orphan*/  JBT_REG_VCOM_VOLTAGE ; 
 int /*<<< orphan*/  JBT_REG_VSC_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (struct td028ttec1_panel*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct td028ttec1_panel*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct td028ttec1_panel*,int,int*) ; 
 struct td028ttec1_panel* FUNC3 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct td028ttec1_panel *lcd = FUNC3(panel);
	unsigned int i;
	int ret = 0;

	/* Three times command zero */
	for (i = 0; i < 3; ++i) {
		FUNC2(lcd, 0x00, &ret);
		FUNC4(1000, 2000);
	}

	/* deep standby out */
	FUNC0(lcd, JBT_REG_POWER_ON_OFF, 0x17, &ret);

	/* RGB I/F on, RAM write off, QVGA through, SIGCON enable */
	FUNC0(lcd, JBT_REG_DISPLAY_MODE, 0x80, &ret);

	/* Quad mode off */
	FUNC0(lcd, JBT_REG_QUAD_RATE, 0x00, &ret);

	/* AVDD on, XVDD on */
	FUNC0(lcd, JBT_REG_POWER_ON_OFF, 0x16, &ret);

	/* Output control */
	FUNC1(lcd, JBT_REG_OUTPUT_CONTROL, 0xfff9, &ret);

	/* Sleep mode off */
	FUNC2(lcd, JBT_REG_SLEEP_OUT, &ret);

	/* at this point we have like 50% grey */

	/* initialize register set */
	FUNC0(lcd, JBT_REG_DISPLAY_MODE1, 0x01, &ret);
	FUNC0(lcd, JBT_REG_DISPLAY_MODE2, 0x00, &ret);
	FUNC0(lcd, JBT_REG_RGB_FORMAT, 0x60, &ret);
	FUNC0(lcd, JBT_REG_DRIVE_SYSTEM, 0x10, &ret);
	FUNC0(lcd, JBT_REG_BOOSTER_OP, 0x56, &ret);
	FUNC0(lcd, JBT_REG_BOOSTER_MODE, 0x33, &ret);
	FUNC0(lcd, JBT_REG_BOOSTER_FREQ, 0x11, &ret);
	FUNC0(lcd, JBT_REG_BOOSTER_FREQ, 0x11, &ret);
	FUNC0(lcd, JBT_REG_OPAMP_SYSCLK, 0x02, &ret);
	FUNC0(lcd, JBT_REG_VSC_VOLTAGE, 0x2b, &ret);
	FUNC0(lcd, JBT_REG_VCOM_VOLTAGE, 0x40, &ret);
	FUNC0(lcd, JBT_REG_EXT_DISPL, 0x03, &ret);
	FUNC0(lcd, JBT_REG_DCCLK_DCEV, 0x04, &ret);
	/*
	 * default of 0x02 in JBT_REG_ASW_SLEW responsible for 72Hz requirement
	 * to avoid red / blue flicker
	 */
	FUNC0(lcd, JBT_REG_ASW_SLEW, 0x04, &ret);
	FUNC0(lcd, JBT_REG_DUMMY_DISPLAY, 0x00, &ret);

	FUNC0(lcd, JBT_REG_SLEEP_OUT_FR_A, 0x11, &ret);
	FUNC0(lcd, JBT_REG_SLEEP_OUT_FR_B, 0x11, &ret);
	FUNC0(lcd, JBT_REG_SLEEP_OUT_FR_C, 0x11, &ret);
	FUNC1(lcd, JBT_REG_SLEEP_IN_LCCNT_D, 0x2040, &ret);
	FUNC1(lcd, JBT_REG_SLEEP_IN_LCCNT_E, 0x60c0, &ret);
	FUNC1(lcd, JBT_REG_SLEEP_IN_LCCNT_F, 0x1020, &ret);
	FUNC1(lcd, JBT_REG_SLEEP_IN_LCCNT_G, 0x60c0, &ret);

	FUNC1(lcd, JBT_REG_GAMMA1_FINE_1, 0x5533, &ret);
	FUNC0(lcd, JBT_REG_GAMMA1_FINE_2, 0x00, &ret);
	FUNC0(lcd, JBT_REG_GAMMA1_INCLINATION, 0x00, &ret);
	FUNC0(lcd, JBT_REG_GAMMA1_BLUE_OFFSET, 0x00, &ret);

	FUNC1(lcd, JBT_REG_HCLOCK_VGA, 0x1f0, &ret);
	FUNC0(lcd, JBT_REG_BLANK_CONTROL, 0x02, &ret);
	FUNC1(lcd, JBT_REG_BLANK_TH_TV, 0x0804, &ret);

	FUNC0(lcd, JBT_REG_CKV_ON_OFF, 0x01, &ret);
	FUNC1(lcd, JBT_REG_CKV_1_2, 0x0000, &ret);

	FUNC1(lcd, JBT_REG_OEV_TIMING, 0x0d0e, &ret);
	FUNC1(lcd, JBT_REG_ASW_TIMING_1, 0x11a4, &ret);
	FUNC0(lcd, JBT_REG_ASW_TIMING_2, 0x0e, &ret);

	return ret;
}