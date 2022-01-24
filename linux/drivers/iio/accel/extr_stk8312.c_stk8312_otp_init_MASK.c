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
struct stk8312_data {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STK8312_REG_AFECTRL ; 
 int /*<<< orphan*/  STK8312_REG_OTPADDR ; 
 int /*<<< orphan*/  STK8312_REG_OTPCTRL ; 
 int /*<<< orphan*/  STK8312_REG_OTPDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct stk8312_data *data)
{
	int ret;
	int count = 10;
	struct i2c_client *client = data->client;

	ret = FUNC3(client, STK8312_REG_OTPADDR, 0x70);
	if (ret < 0)
		goto exit_err;
	ret = FUNC3(client, STK8312_REG_OTPCTRL, 0x02);
	if (ret < 0)
		goto exit_err;

	do {
		FUNC5(1000, 5000);
		ret = FUNC2(client, STK8312_REG_OTPCTRL);
		if (ret < 0)
			goto exit_err;
		count--;
	} while (!(ret & FUNC0(7)) && count > 0);

	if (count == 0) {
		ret = -ETIMEDOUT;
		goto exit_err;
	}

	ret = FUNC2(client, STK8312_REG_OTPDATA);
	if (ret == 0)
		ret = -EINVAL;
	if (ret < 0)
		goto exit_err;

	ret = FUNC3(data->client, STK8312_REG_AFECTRL, ret);
	if (ret < 0)
		goto exit_err;
	FUNC4(150);

	return 0;

exit_err:
	FUNC1(&client->dev, "failed to initialize sensor\n");
	return ret;
}