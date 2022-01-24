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
struct stk8ba50_data {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STK8BA50_MODE_POWERBIT ; 
 int /*<<< orphan*/  STK8BA50_REG_POWMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct stk8ba50_data *data, bool mode)
{
	int ret;
	u8 masked_reg;
	struct i2c_client *client = data->client;

	ret = FUNC1(client, STK8BA50_REG_POWMODE);
	if (ret < 0)
		goto exit_err;

	if (mode)
		masked_reg = ret | STK8BA50_MODE_POWERBIT;
	else
		masked_reg = ret & (~STK8BA50_MODE_POWERBIT);

	ret = FUNC2(client, STK8BA50_REG_POWMODE,
					masked_reg);
	if (ret < 0)
		goto exit_err;

	return ret;

exit_err:
	FUNC0(&client->dev, "failed to change sensor mode\n");
	return ret;
}