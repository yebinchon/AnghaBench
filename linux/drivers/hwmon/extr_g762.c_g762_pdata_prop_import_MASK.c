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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct g762_platform_data {int /*<<< orphan*/  clk_freq; int /*<<< orphan*/  fan_startv; int /*<<< orphan*/  pwm_polarity; int /*<<< orphan*/  fan_gear_mode; } ;

/* Variables and functions */
 struct g762_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct g762_platform_data *pdata = FUNC0(&client->dev);
	int ret;

	if (!pdata)
		return 0;

	ret = FUNC2(&client->dev, pdata->fan_gear_mode);
	if (ret)
		return ret;

	ret = FUNC4(&client->dev, pdata->pwm_polarity);
	if (ret)
		return ret;

	ret = FUNC3(&client->dev, pdata->fan_startv);
	if (ret)
		return ret;

	return FUNC1(&client->dev, pdata->clk_freq);
}