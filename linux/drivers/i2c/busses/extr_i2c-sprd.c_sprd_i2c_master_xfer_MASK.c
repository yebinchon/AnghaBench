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
struct sprd_i2c {int /*<<< orphan*/  dev; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct sprd_i2c* algo_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_adapter*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *i2c_adap,
				struct i2c_msg *msgs, int num)
{
	struct sprd_i2c *i2c_dev = i2c_adap->algo_data;
	int im, ret;

	ret = FUNC0(i2c_dev->dev);
	if (ret < 0)
		return ret;

	for (im = 0; im < num - 1; im++) {
		ret = FUNC3(i2c_adap, &msgs[im], 0);
		if (ret)
			goto err_msg;
	}

	ret = FUNC3(i2c_adap, &msgs[im++], 1);

err_msg:
	FUNC1(i2c_dev->dev);
	FUNC2(i2c_dev->dev);

	return ret < 0 ? ret : im;
}