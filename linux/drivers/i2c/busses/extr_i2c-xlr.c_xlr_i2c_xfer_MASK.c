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
struct xlr_i2c_private {struct i2c_msg* msg; int /*<<< orphan*/  clk; int /*<<< orphan*/  iobase; scalar_t__ irq; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  addr; int /*<<< orphan*/ * buf; int /*<<< orphan*/  len; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  XLR_I2C_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct xlr_i2c_private* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (struct xlr_i2c_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xlr_i2c_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap,
	struct i2c_msg *msgs, int num)
{
	struct i2c_msg *msg;
	int i;
	int ret = 0;
	struct xlr_i2c_private *priv = FUNC2(adap);

	ret = FUNC1(priv->clk);
	if (ret)
		return ret;

	if (priv->irq)
		FUNC5(priv->iobase, XLR_I2C_INT_EN, 0xf);


	for (i = 0; ret == 0 && i < num; i++) {
		msg = &msgs[i];
		priv->msg = msg;
		if (msg->flags & I2C_M_RD)
			ret = FUNC3(priv, msg->len, &msg->buf[0],
					msg->addr);
		else
			ret = FUNC4(priv, msg->len, &msg->buf[0],
					msg->addr);
	}

	if (priv->irq)
		FUNC5(priv->iobase, XLR_I2C_INT_EN, 0);

	FUNC0(priv->clk);
	priv->msg = NULL;

	return (ret != 0) ? ret : num;
}