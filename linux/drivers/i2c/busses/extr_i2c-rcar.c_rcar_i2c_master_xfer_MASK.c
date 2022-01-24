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
struct rcar_i2c_priv {scalar_t__ devtype; int flags; int msgs_left; scalar_t__ dma_direction; int /*<<< orphan*/  wait; struct i2c_msg* msg; int /*<<< orphan*/  rstc; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int timeout; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_NONE ; 
 int EAGAIN ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 scalar_t__ I2C_RCAR_GEN3 ; 
 int ID_ARBLOST ; 
 int ID_DONE ; 
 int ID_FIRST_MSG ; 
 int ID_NACK ; 
 int ID_P_MASK ; 
 int ID_P_NO_RXDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 struct rcar_i2c_priv* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_i2c_priv*) ; 
 int FUNC7 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct rcar_i2c_priv*) ; 
 struct device* FUNC10 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct rcar_i2c_priv*,struct i2c_msg*) ; 
 long FUNC12 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_adapter *adap,
				struct i2c_msg *msgs,
				int num)
{
	struct rcar_i2c_priv *priv = FUNC2(adap);
	struct device *dev = FUNC10(priv);
	int i, ret;
	long time_left;

	FUNC3(dev);

	/* Check bus state before init otherwise bus busy info will be lost */
	ret = FUNC5(priv);
	if (ret < 0)
		goto out;

	/* Gen3 needs a reset before allowing RXDMA once */
	if (priv->devtype == I2C_RCAR_GEN3) {
		priv->flags |= ID_P_NO_RXDMA;
		if (!FUNC0(priv->rstc)) {
			ret = FUNC7(priv);
			if (ret == 0)
				priv->flags &= ~ID_P_NO_RXDMA;
		}
	}

	FUNC8(priv);

	for (i = 0; i < num; i++)
		FUNC11(priv, msgs + i);

	/* init first message */
	priv->msg = msgs;
	priv->msgs_left = num;
	priv->flags = (priv->flags & ID_P_MASK) | ID_FIRST_MSG;
	FUNC9(priv);

	time_left = FUNC12(priv->wait, priv->flags & ID_DONE,
				     num * adap->timeout);

	/* cleanup DMA if it couldn't complete properly due to an error */
	if (priv->dma_direction != DMA_NONE)
		FUNC6(priv);

	if (!time_left) {
		FUNC8(priv);
		ret = -ETIMEDOUT;
	} else if (priv->flags & ID_NACK) {
		ret = -ENXIO;
	} else if (priv->flags & ID_ARBLOST) {
		ret = -EAGAIN;
	} else {
		ret = num - priv->msgs_left; /* The number of transfer */
	}
out:
	FUNC4(dev);

	if (ret < 0 && ret != -ENXIO)
		FUNC1(dev, "error %d : %x\n", ret, priv->flags);

	return ret;
}