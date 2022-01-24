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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_i2c_priv {scalar_t__ membase; int /*<<< orphan*/  comp; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ UNIPHIER_I2C_DREC ; 
 scalar_t__ UNIPHIER_I2C_DTRM ; 
 int /*<<< orphan*/  UNIPHIER_I2C_DTRM_IRQEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct uniphier_i2c_priv* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap, u32 txdata,
				  u32 *rxdatap)
{
	struct uniphier_i2c_priv *priv = FUNC1(adap);
	unsigned long time_left;
	u32 rxdata;

	FUNC3(&priv->comp);

	txdata |= UNIPHIER_I2C_DTRM_IRQEN;
	FUNC6(txdata, priv->membase + UNIPHIER_I2C_DTRM);

	time_left = FUNC5(&priv->comp, adap->timeout);
	if (FUNC4(!time_left)) {
		FUNC0(&adap->dev, "transaction timeout\n");
		return -ETIMEDOUT;
	}

	rxdata = FUNC2(priv->membase + UNIPHIER_I2C_DREC);
	if (rxdatap)
		*rxdatap = rxdata;

	return 0;
}