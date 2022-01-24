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
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int ETP_I2C_INF_LENGTH ; 
 int ETP_I2C_REPORT_LEN ; 
 int /*<<< orphan*/  ETP_I2C_RESET ; 
 int /*<<< orphan*/  ETP_I2C_STAND_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct completion*) ; 
 int /*<<< orphan*/  FUNC8 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
				     struct completion *completion)
{
	struct device *dev = &client->dev;
	int error;
	int len;
	u8 buffer[ETP_I2C_REPORT_LEN];

	len = FUNC5(client, buffer, ETP_I2C_REPORT_LEN);
	if (len != ETP_I2C_REPORT_LEN) {
		error = len < 0 ? len : -EIO;
		FUNC1(dev, "failed to read I2C data after FW WDT reset: %d (%d)\n",
			error, len);
	}

	FUNC7(completion);
	FUNC4(client->irq);

	error = FUNC3(client, ETP_I2C_STAND_CMD, ETP_I2C_RESET);
	if (error) {
		FUNC0(dev, "device reset failed: %d\n", error);
	} else if (!FUNC8(completion,
						FUNC6(300))) {
		FUNC0(dev, "timeout waiting for device reset\n");
		error = -ETIMEDOUT;
	}

	FUNC2(client->irq);

	if (error)
		return error;

	len = FUNC5(client, buffer, ETP_I2C_INF_LENGTH);
	if (len != ETP_I2C_INF_LENGTH) {
		error = len < 0 ? len : -EIO;
		FUNC0(dev, "failed to read INT signal: %d (%d)\n",
			error, len);
		return error;
	}

	return 0;
}