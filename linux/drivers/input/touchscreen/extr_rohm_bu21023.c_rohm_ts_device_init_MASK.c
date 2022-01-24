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
typedef  int u8 ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_CTRL ; 
 int ADC_DIV_DEFAULT ; 
 int ADC_TIMEOUT ; 
 int /*<<< orphan*/  ADC_WAIT ; 
 int ADC_WAIT_DEFAULT ; 
 int ANALOG_POWER_ON ; 
 int /*<<< orphan*/  BU21023_FIRMWARE_NAME ; 
 int /*<<< orphan*/  CALIBRATION_ADJUST ; 
 int CALIBRATION_ADJUST_DEFAULT ; 
 int CALIBRATION_DONE ; 
 int /*<<< orphan*/  CALIBRATION_REG1 ; 
 int CALIBRATION_REG1_DEFAULT ; 
 int /*<<< orphan*/  CALIBRATION_REG2 ; 
 int CALIBRATION_REG2_DEFAULT ; 
 int /*<<< orphan*/  CALIBRATION_REG3 ; 
 int CALIBRATION_REG3_DEFAULT ; 
 int /*<<< orphan*/  COMMON_SETUP1 ; 
 int /*<<< orphan*/  COMMON_SETUP2 ; 
 int /*<<< orphan*/  COMMON_SETUP3 ; 
 int /*<<< orphan*/  CPU_FREQ ; 
 int CPU_FREQ_10MHZ ; 
 int CPU_POWER_OFF ; 
 int CPU_POWER_ON ; 
 int CPU_TIMEOUT ; 
 int DUALTOUCH_REG_ON ; 
 int DUALTOUCH_STABILIZE_ON ; 
 int EN_MULTI ; 
 int /*<<< orphan*/  ERR_MASK ; 
 int /*<<< orphan*/  EVR_X ; 
 int /*<<< orphan*/  EVR_XY ; 
 int EVR_XY_DEFAULT ; 
 int EVR_X_DEFAULT ; 
 int /*<<< orphan*/  EVR_Y ; 
 int EVR_Y_DEFAULT ; 
 int /*<<< orphan*/  EX_WDAT ; 
 int /*<<< orphan*/  FORCE_CALIBRATION ; 
 int FORCE_CALIBRATION_OFF ; 
 int FORCE_CALIBRATION_ON ; 
 int /*<<< orphan*/  INTERVAL_TIME ; 
 int INTERVAL_TIME_DEFAULT ; 
 int /*<<< orphan*/  INT_CLEAR ; 
 int /*<<< orphan*/  INT_MASK ; 
 int /*<<< orphan*/  OFFSET_X ; 
 int OFFSET_X_DEFAULT ; 
 int /*<<< orphan*/  OFFSET_Y ; 
 int OFFSET_Y_DEFAULT ; 
 int /*<<< orphan*/  PRM_SWOFF_TIME ; 
 int PRM_SWOFF_TIME_DEFAULT ; 
 int PROGRAM_LOAD_DONE ; 
 int PROGRAM_LOAD_ERR ; 
 int SEL_TBL_DEFAULT ; 
 int SLEEP_IN ; 
 int SLEEP_OUT ; 
 int /*<<< orphan*/  STEP_X ; 
 int STEP_X_DEFAULT ; 
 int /*<<< orphan*/  STEP_Y ; 
 int STEP_Y_DEFAULT ; 
 int /*<<< orphan*/  SWCONT ; 
 int SWCONT_DEFAULT ; 
 int /*<<< orphan*/  SYSTEM ; 
 int /*<<< orphan*/  TEST1 ; 
 int /*<<< orphan*/  THRESHOLD_GESTURE ; 
 int THRESHOLD_GESTURE_DEFAULT ; 
 int /*<<< orphan*/  THRESHOLD_TOUCH ; 
 int THRESHOLD_TOUCH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, u8 setup2)
{
	struct device *dev = &client->dev;
	int error;

	FUNC1(client->irq);

	/*
	 * Wait 200usec for reset
	 */
	FUNC5(200);

	/* Release analog reset */
	error = FUNC3(client, SYSTEM,
					  ANALOG_POWER_ON | CPU_POWER_OFF);
	if (error)
		return error;

	/* Waiting for the analog warm-up, max. 200usec */
	FUNC5(200);

	/* clear all interrupts */
	error = FUNC3(client, INT_CLEAR, 0xff);
	if (error)
		return error;

	error = FUNC3(client, EX_WDAT, 0);
	if (error)
		return error;

	error = FUNC3(client, COMMON_SETUP1, 0);
	if (error)
		return error;

	error = FUNC3(client, COMMON_SETUP2, setup2);
	if (error)
		return error;

	error = FUNC3(client, COMMON_SETUP3,
					  SEL_TBL_DEFAULT | EN_MULTI);
	if (error)
		return error;

	error = FUNC3(client, THRESHOLD_GESTURE,
					  THRESHOLD_GESTURE_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, INTERVAL_TIME,
					  INTERVAL_TIME_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, CPU_FREQ, CPU_FREQ_10MHZ);
	if (error)
		return error;

	error = FUNC3(client, PRM_SWOFF_TIME,
					  PRM_SWOFF_TIME_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, ADC_CTRL, ADC_DIV_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, ADC_WAIT, ADC_WAIT_DEFAULT);
	if (error)
		return error;

	/*
	 * Panel setup, these values change with the panel.
	 */
	error = FUNC3(client, STEP_X, STEP_X_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, STEP_Y, STEP_Y_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, OFFSET_X, OFFSET_X_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, OFFSET_Y, OFFSET_Y_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, THRESHOLD_TOUCH,
					  THRESHOLD_TOUCH_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, EVR_XY, EVR_XY_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, EVR_X, EVR_X_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, EVR_Y, EVR_Y_DEFAULT);
	if (error)
		return error;

	/* Fixed value settings */
	error = FUNC3(client, CALIBRATION_ADJUST,
					  CALIBRATION_ADJUST_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, SWCONT, SWCONT_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, TEST1,
					  DUALTOUCH_STABILIZE_ON |
					  DUALTOUCH_REG_ON);
	if (error)
		return error;

	error = FUNC4(client, BU21023_FIRMWARE_NAME);
	if (error) {
		FUNC0(dev, "failed to load firmware: %d\n", error);
		return error;
	}

	/*
	 * Manual calibration results are not changed in same environment.
	 * If the force calibration is performed,
	 * the controller will not require calibration request interrupt
	 * when the typical values are set to the calibration registers.
	 */
	error = FUNC3(client, CALIBRATION_REG1,
					  CALIBRATION_REG1_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, CALIBRATION_REG2,
					  CALIBRATION_REG2_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, CALIBRATION_REG3,
					  CALIBRATION_REG3_DEFAULT);
	if (error)
		return error;

	error = FUNC3(client, FORCE_CALIBRATION,
					  FORCE_CALIBRATION_OFF);
	if (error)
		return error;

	error = FUNC3(client, FORCE_CALIBRATION,
					  FORCE_CALIBRATION_ON);
	if (error)
		return error;

	/* Clear all interrupts */
	error = FUNC3(client, INT_CLEAR, 0xff);
	if (error)
		return error;

	/* Enable coordinates update interrupt */
	error = FUNC3(client, INT_MASK,
					  CALIBRATION_DONE | SLEEP_OUT |
					  SLEEP_IN | PROGRAM_LOAD_DONE);
	if (error)
		return error;

	error = FUNC3(client, ERR_MASK,
					  PROGRAM_LOAD_ERR | CPU_TIMEOUT |
					  ADC_TIMEOUT);
	if (error)
		return error;

	/* controller CPU power on */
	error = FUNC3(client, SYSTEM,
					  ANALOG_POWER_ON | CPU_POWER_ON);

	FUNC2(client->irq);

	return error;
}