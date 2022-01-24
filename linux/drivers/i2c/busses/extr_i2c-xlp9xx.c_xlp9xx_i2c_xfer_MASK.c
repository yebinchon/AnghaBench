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
struct xlp9xx_i2c_dev {int dummy; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 struct xlp9xx_i2c_dev* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlp9xx_i2c_dev*) ; 
 int FUNC3 (struct xlp9xx_i2c_dev*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adap, struct i2c_msg *msgs,
			   int num)
{
	int i, ret;
	struct xlp9xx_i2c_dev *priv = FUNC0(adap);

	ret = FUNC1(priv);
	if (ret) {
		FUNC2(priv);
		ret = FUNC1(priv);
		if (ret)
			return ret;
	}

	for (i = 0; i < num; i++) {
		ret = FUNC3(priv, &msgs[i], i == num - 1);
		if (ret != 0)
			return ret;
	}

	return num;
}