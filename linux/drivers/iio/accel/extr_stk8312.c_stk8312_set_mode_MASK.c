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
struct stk8312_data {int mode; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STK8312_MODE_ACTIVE ; 
 int /*<<< orphan*/  STK8312_REG_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct stk8312_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct stk8312_data *data, u8 mode)
{
	int ret;
	struct i2c_client *client = data->client;

	if (mode == data->mode)
		return 0;

	ret = FUNC1(client, STK8312_REG_MODE, mode);
	if (ret < 0) {
		FUNC0(&client->dev, "failed to change sensor mode\n");
		return ret;
	}

	data->mode = mode;
	if (mode & STK8312_MODE_ACTIVE) {
		/* Need to run OTP sequence before entering active mode */
		FUNC3(1000, 5000);
		ret = FUNC2(data);
	}

	return ret;
}