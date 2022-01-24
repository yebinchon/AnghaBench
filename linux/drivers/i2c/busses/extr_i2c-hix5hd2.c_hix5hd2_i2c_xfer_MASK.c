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
struct i2c_adapter {int dummy; } ;
struct hix5hd2_i2c_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct hix5hd2_i2c_priv*,struct i2c_msg*,int) ; 
 struct hix5hd2_i2c_priv* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap,
			    struct i2c_msg *msgs, int num)
{
	struct hix5hd2_i2c_priv *priv = FUNC1(adap);
	int i, ret, stop;

	FUNC2(priv->dev);

	for (i = 0; i < num; i++, msgs++) {
		stop = (i == num - 1);
		ret = FUNC0(priv, msgs, stop);
		if (ret < 0)
			goto out;
	}

	ret = num;

out:
	FUNC3(priv->dev);
	FUNC4(priv->dev);
	return ret;
}