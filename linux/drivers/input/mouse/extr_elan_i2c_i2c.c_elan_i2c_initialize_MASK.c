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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_DESC_CMD ; 
 int /*<<< orphan*/  ETP_I2C_DESC_LENGTH ; 
 int /*<<< orphan*/  ETP_I2C_INF_LENGTH ; 
 int /*<<< orphan*/  ETP_I2C_REPORT_DESC_CMD ; 
 int /*<<< orphan*/  ETP_I2C_REPORT_DESC_LENGTH ; 
 int /*<<< orphan*/  ETP_I2C_RESET ; 
 int /*<<< orphan*/  ETP_I2C_STAND_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	int error;
	u8 val[256];

	error = FUNC2(client, ETP_I2C_STAND_CMD, ETP_I2C_RESET);
	if (error) {
		FUNC0(dev, "device reset failed: %d\n", error);
		return error;
	}

	/* Wait for the device to reset */
	FUNC4(100);

	/* get reset acknowledgement 0000 */
	error = FUNC3(client, val, ETP_I2C_INF_LENGTH);
	if (error < 0) {
		FUNC0(dev, "failed to read reset response: %d\n", error);
		return error;
	}

	error = FUNC1(client, ETP_I2C_DESC_CMD,
				    val, ETP_I2C_DESC_LENGTH);
	if (error) {
		FUNC0(dev, "cannot get device descriptor: %d\n", error);
		return error;
	}

	error = FUNC1(client, ETP_I2C_REPORT_DESC_CMD,
				    val, ETP_I2C_REPORT_DESC_LENGTH);
	if (error) {
		FUNC0(dev, "fetching report descriptor failed.: %d\n", error);
		return error;
	}

	return 0;
}