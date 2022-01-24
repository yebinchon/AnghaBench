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
typedef  int u32 ;
struct uniphier_fi2c_priv {int error; int flags; scalar_t__ membase; int /*<<< orphan*/  lock; scalar_t__ enabled_irqs; int /*<<< orphan*/  comp; int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  U32_MAX ; 
 scalar_t__ UNIPHIER_FI2C_CR ; 
 int UNIPHIER_FI2C_CR_MST ; 
 int UNIPHIER_FI2C_CR_STA ; 
 int UNIPHIER_FI2C_DEFER_STOP_COMP ; 
 scalar_t__ UNIPHIER_FI2C_INT_FAULTS ; 
 scalar_t__ UNIPHIER_FI2C_RST ; 
 int UNIPHIER_FI2C_RST_RBRST ; 
 int UNIPHIER_FI2C_RST_TBRST ; 
 scalar_t__ UNIPHIER_FI2C_SR ; 
 int UNIPHIER_FI2C_SR_BB ; 
 int UNIPHIER_FI2C_SR_STS ; 
 int UNIPHIER_FI2C_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct uniphier_fi2c_priv* FUNC1 (struct i2c_adapter*) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uniphier_fi2c_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uniphier_fi2c_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct uniphier_fi2c_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uniphier_fi2c_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct uniphier_fi2c_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct i2c_adapter *adap,
					 struct i2c_msg *msg, bool repeat,
					 bool stop)
{
	struct uniphier_fi2c_priv *priv = FUNC1(adap);
	bool is_read = msg->flags & I2C_M_RD;
	unsigned long time_left, flags;

	priv->len = msg->len;
	priv->buf = msg->buf;
	priv->enabled_irqs = UNIPHIER_FI2C_INT_FAULTS;
	priv->error = 0;
	priv->flags = 0;

	if (stop)
		priv->flags |= UNIPHIER_FI2C_STOP;

	FUNC3(&priv->comp);
	FUNC6(priv, U32_MAX);
	FUNC13(UNIPHIER_FI2C_RST_TBRST | UNIPHIER_FI2C_RST_RBRST,
	       priv->membase + UNIPHIER_FI2C_RST);	/* reset TX/RX FIFO */

	FUNC4(&priv->lock, flags);

	if (is_read)
		FUNC8(priv, msg->addr);
	else
		FUNC10(priv, msg->addr, repeat);

	/*
	 * For a repeated START condition, writing a slave address to the FIFO
	 * kicks the controller. So, the UNIPHIER_FI2C_CR register should be
	 * written only for a non-repeated START condition.
	 */
	if (!repeat)
		FUNC13(UNIPHIER_FI2C_CR_MST | UNIPHIER_FI2C_CR_STA,
		       priv->membase + UNIPHIER_FI2C_CR);

	FUNC5(&priv->lock, flags);

	time_left = FUNC12(&priv->comp, adap->timeout);

	FUNC4(&priv->lock, flags);
	priv->enabled_irqs = 0;
	FUNC9(priv);
	FUNC5(&priv->lock, flags);

	if (!time_left) {
		FUNC0(&adap->dev, "transaction timeout.\n");
		FUNC7(priv);
		return -ETIMEDOUT;
	}

	if (FUNC11(priv->flags & UNIPHIER_FI2C_DEFER_STOP_COMP)) {
		u32 status;
		int ret;

		ret = FUNC2(priv->membase + UNIPHIER_FI2C_SR,
					 status,
					 (status & UNIPHIER_FI2C_SR_STS) &&
					 !(status & UNIPHIER_FI2C_SR_BB),
					 1, 20);
		if (ret) {
			FUNC0(&adap->dev,
				"stop condition was not completed.\n");
			FUNC7(priv);
			return ret;
		}
	}

	return priv->error;
}