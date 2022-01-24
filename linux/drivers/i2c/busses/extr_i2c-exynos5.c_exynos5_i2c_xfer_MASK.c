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
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct exynos5_i2c* algo_data; } ;
struct exynos5_i2c {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct exynos5_i2c*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adap,
			struct i2c_msg *msgs, int num)
{
	struct exynos5_i2c *i2c = adap->algo_data;
	int i, ret;

	ret = FUNC1(i2c->clk);
	if (ret)
		return ret;

	for (i = 0; i < num; ++i) {
		ret = FUNC2(i2c, msgs + i, i + 1 == num);
		if (ret)
			break;
	}

	FUNC0(i2c->clk);

	return ret ?: num;
}