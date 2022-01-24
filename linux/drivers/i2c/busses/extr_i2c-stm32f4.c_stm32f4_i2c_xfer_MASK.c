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
struct stm32f4_i2c_dev {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct stm32f4_i2c_dev* FUNC3 (struct i2c_adapter*) ; 
 int FUNC4 (struct stm32f4_i2c_dev*,struct i2c_msg*,int,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *i2c_adap, struct i2c_msg msgs[],
			    int num)
{
	struct stm32f4_i2c_dev *i2c_dev = FUNC3(i2c_adap);
	int ret, i;

	ret = FUNC1(i2c_dev->clk);
	if (ret) {
		FUNC2(i2c_dev->dev, "Failed to enable clock\n");
		return ret;
	}

	for (i = 0; i < num && !ret; i++)
		ret = FUNC4(i2c_dev, &msgs[i], i == 0,
					   i == num - 1);

	FUNC0(i2c_dev->clk);

	return (ret < 0) ? ret : num;
}