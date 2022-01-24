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
struct stk8312_data {int range; int mode; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int STK8312_MODE_STANDBY ; 
 int /*<<< orphan*/  STK8312_REG_STH ; 
 int STK8312_RNG_MASK ; 
 int STK8312_RNG_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct stk8312_data*,int) ; 

__attribute__((used)) static int FUNC4(struct stk8312_data *data, u8 range)
{
	int ret;
	u8 masked_reg;
	u8 mode;
	struct i2c_client *client = data->client;

	if (range != 1 && range != 2)
		return -EINVAL;
	else if (range == data->range)
		return 0;

	mode = data->mode;
	/* We need to go in standby mode to modify registers */
	ret = FUNC3(data, STK8312_MODE_STANDBY);
	if (ret < 0)
		return ret;

	ret = FUNC1(client, STK8312_REG_STH);
	if (ret < 0)
		goto err_activate;

	masked_reg = ret & (~STK8312_RNG_MASK);
	masked_reg |= range << STK8312_RNG_SHIFT;

	ret = FUNC2(client, STK8312_REG_STH, masked_reg);
	if (ret < 0)
		goto err_activate;

	data->range = range;

	return FUNC3(data, mode);

err_activate:
	FUNC0(&client->dev, "failed to change sensor range\n");
	FUNC3(data, mode);

	return ret;
}