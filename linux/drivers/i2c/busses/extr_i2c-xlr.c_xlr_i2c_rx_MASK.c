#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct xlr_i2c_private {scalar_t__ irq; int /*<<< orphan*/  iobase; scalar_t__ pos; TYPE_1__* cfg; struct i2c_adapter adap; } ;
struct TYPE_2__ {int cfg_extra; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int XLR_I2C_ACK_ERR ; 
 int XLR_I2C_ARB_STARTERR ; 
 int /*<<< orphan*/  XLR_I2C_BYTECNT ; 
 int /*<<< orphan*/  XLR_I2C_CFG ; 
 int XLR_I2C_CFG_NOADDR ; 
 int /*<<< orphan*/  XLR_I2C_DATAIN ; 
 int /*<<< orphan*/  XLR_I2C_DEVADDR ; 
 int XLR_I2C_RXRDY ; 
 int /*<<< orphan*/  XLR_I2C_STARTXFR ; 
 int XLR_I2C_STARTXFR_RD ; 
 int /*<<< orphan*/  XLR_I2C_STATUS ; 
 int XLR_I2C_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct xlr_i2c_private*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xlr_i2c_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct xlr_i2c_private *priv, u16 len, u8 *buf, u16 addr)
{
	struct i2c_adapter *adap = &priv->adap;
	u32 i2c_status;
	unsigned long timeout, stoptime, checktime;
	int nbytes, timedout;

	FUNC6(priv->iobase, XLR_I2C_CFG,
			XLR_I2C_CFG_NOADDR | priv->cfg->cfg_extra);
	FUNC6(priv->iobase, XLR_I2C_BYTECNT, len - 1);
	FUNC6(priv->iobase, XLR_I2C_DEVADDR, addr);

	priv->pos = 0;

	timeout = FUNC1(XLR_I2C_TIMEOUT);
	stoptime = jiffies + timeout;
	timedout = 0;
	nbytes = 0;
retry:
	FUNC6(priv->iobase, XLR_I2C_STARTXFR, XLR_I2C_STARTXFR_RD);

	if (priv->irq > 0)
		return FUNC5(priv, XLR_I2C_TIMEOUT * len);

	while (!timedout) {
		checktime = jiffies;
		i2c_status = FUNC4(priv->iobase, XLR_I2C_STATUS);
		if (i2c_status & XLR_I2C_RXRDY) {
			if (nbytes >= len)
				return -EIO;	/* should not happen */

			buf[nbytes++] =
				FUNC4(priv->iobase, XLR_I2C_DATAIN);

			/* reset timeout on successful read */
			stoptime = jiffies + timeout;
		}

		timedout = FUNC2(checktime, stoptime);
		if (i2c_status & XLR_I2C_ARB_STARTERR) {
			if (timedout)
				break;
			goto retry;
		}

		if (i2c_status & XLR_I2C_ACK_ERR)
			return -EIO;

		if (!FUNC3(priv, i2c_status))
			return 0;
	}

	FUNC0(&adap->dev, "I2C receive timeout\n");
	return -ETIMEDOUT;
}