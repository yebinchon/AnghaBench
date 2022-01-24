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
struct meson_i2c {int /*<<< orphan*/  clk; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct meson_i2c* algo_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct meson_i2c*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adap, struct i2c_msg *msgs,
			  int num)
{
	struct meson_i2c *i2c = adap->algo_data;
	int i, ret = 0;

	FUNC1(i2c->clk);

	for (i = 0; i < num; i++) {
		ret = FUNC2(i2c, msgs + i, i == num - 1);
		if (ret)
			break;
	}

	FUNC0(i2c->clk);

	return ret ?: i;
}