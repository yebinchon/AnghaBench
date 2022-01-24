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
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  touch_data ;
struct iqs5xx_touch_data {int /*<<< orphan*/  abs_y; int /*<<< orphan*/  abs_x; int /*<<< orphan*/  strength; } ;
struct iqs5xx_private {scalar_t__ bl_status; struct input_dev* input; struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int FUNC0 (struct iqs5xx_touch_data*) ; 
 int /*<<< orphan*/  IQS5XX_ABS_X ; 
 scalar_t__ IQS5XX_BL_STATUS_RESET ; 
 int /*<<< orphan*/  IQS5XX_END_COMM ; 
 int IQS5XX_NUM_CONTACTS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,struct iqs5xx_touch_data*,int) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct iqs5xx_private *iqs5xx = data;
	struct iqs5xx_touch_data touch_data[IQS5XX_NUM_CONTACTS];
	struct i2c_client *client = iqs5xx->client;
	struct input_dev *input = iqs5xx->input;
	int error, i;

	/*
	 * This check is purely a precaution, as the device does not assert the
	 * RDY output during bootloader mode. If the device operates outside of
	 * bootloader mode, the input device is guaranteed to be allocated.
	 */
	if (iqs5xx->bl_status == IQS5XX_BL_STATUS_RESET)
		return IRQ_NONE;

	error = FUNC7(client, IQS5XX_ABS_X,
				  touch_data, sizeof(touch_data));
	if (error)
		return IRQ_NONE;

	for (i = 0; i < FUNC0(touch_data); i++) {
		u16 pressure = FUNC1(touch_data[i].strength);

		FUNC3(input, i);
		if (FUNC2(input, MT_TOOL_FINGER,
					       pressure != 0)) {
			FUNC5(input, ABS_MT_POSITION_X,
					 FUNC1(touch_data[i].abs_x));
			FUNC5(input, ABS_MT_POSITION_Y,
					 FUNC1(touch_data[i].abs_y));
			FUNC5(input, ABS_MT_PRESSURE, pressure);
		}
	}

	FUNC4(input);
	FUNC6(input);

	error = FUNC8(client, IQS5XX_END_COMM, 0);
	if (error)
		return IRQ_NONE;

	/*
	 * Once the communication window is closed, a small delay is added to
	 * ensure the device's RDY output has been deasserted by the time the
	 * interrupt handler returns.
	 */
	FUNC9(50, 100);

	return IRQ_HANDLED;
}