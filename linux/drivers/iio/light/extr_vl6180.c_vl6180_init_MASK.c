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
struct vl6180_data {int als_it_ms; int als_gain_milli; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  VL6180_ALS_GAIN ; 
 int VL6180_ALS_GAIN_1 ; 
 int /*<<< orphan*/  VL6180_ALS_IT ; 
 int /*<<< orphan*/  VL6180_ALS_IT_100 ; 
 int VL6180_ALS_READY ; 
 int /*<<< orphan*/  VL6180_INTR_CONFIG ; 
 int /*<<< orphan*/  VL6180_MODEL_ID ; 
 int VL6180_MODEL_ID_VAL ; 
 int /*<<< orphan*/  VL6180_OUT_OF_RESET ; 
 int VL6180_RANGE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct vl6180_data*,int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vl6180_data *data)
{
	struct i2c_client *client = data->client;
	int ret;

	ret = FUNC3(client, VL6180_MODEL_ID);
	if (ret < 0)
		return ret;

	if (ret != VL6180_MODEL_ID_VAL) {
		FUNC0(&client->dev, "invalid model ID %02x\n", ret);
		return -ENODEV;
	}

	ret = FUNC2(data, true);
	if (ret < 0)
		return ret;

	ret = FUNC3(client, VL6180_OUT_OF_RESET);
	if (ret < 0)
		return ret;

	/*
	 * Detect false reset condition here. This bit is always set when the
	 * system comes out of reset.
	 */
	if (ret != 0x01)
		FUNC1(&client->dev, "device is not fresh out of reset\n");

	/* Enable ALS and Range ready interrupts */
	ret = FUNC4(client, VL6180_INTR_CONFIG,
				VL6180_ALS_READY | VL6180_RANGE_READY);
	if (ret < 0)
		return ret;

	/* ALS integration time: 100ms */
	data->als_it_ms = 100;
	ret = FUNC5(client, VL6180_ALS_IT, VL6180_ALS_IT_100);
	if (ret < 0)
		return ret;

	/* ALS gain: 1 */
	data->als_gain_milli = 1000;
	ret = FUNC4(client, VL6180_ALS_GAIN, VL6180_ALS_GAIN_1);
	if (ret < 0)
		return ret;

	ret = FUNC4(client, VL6180_OUT_OF_RESET, 0x00);
	if (ret < 0)
		return ret;

	return FUNC2(data, false);
}