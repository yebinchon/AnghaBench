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
struct xlp9xx_i2c_dev {int msg_err; scalar_t__ msg_len; int /*<<< orphan*/  msg_complete; scalar_t__ msg_buf_remaining; int /*<<< orphan*/  msg_read; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  XLP9XX_I2C_INTEN ; 
 int XLP9XX_I2C_INTEN_DATADONE ; 
 int XLP9XX_I2C_INTEN_MFIFOEMTY ; 
 int XLP9XX_I2C_INTEN_MFIFOHI ; 
 int XLP9XX_I2C_INTEN_SADDR ; 
 int /*<<< orphan*/  XLP9XX_I2C_INTST ; 
 int XLP9XX_I2C_STATUS_ERRMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct xlp9xx_i2c_dev*,int) ; 
 int FUNC4 (struct xlp9xx_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xlp9xx_i2c_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct xlp9xx_i2c_dev *priv = dev_id;
	u32 status;

	status = FUNC4(priv, XLP9XX_I2C_INTST);
	if (status == 0)
		return IRQ_NONE;

	FUNC5(priv, XLP9XX_I2C_INTST, status);
	if (status & XLP9XX_I2C_STATUS_ERRMASK) {
		priv->msg_err = status;
		goto xfer_done;
	}

	/* SADDR ACK for SMBUS_QUICK */
	if ((status & XLP9XX_I2C_INTEN_SADDR) && (priv->msg_len == 0))
		goto xfer_done;

	if (!priv->msg_read) {
		if (status & XLP9XX_I2C_INTEN_MFIFOEMTY) {
			/* TX FIFO got empty, fill it up again */
			if (priv->msg_buf_remaining)
				FUNC2(priv);
			else
				FUNC3(priv,
						    XLP9XX_I2C_INTEN_MFIFOEMTY);
		}
	} else {
		if (status & (XLP9XX_I2C_INTEN_DATADONE |
			      XLP9XX_I2C_INTEN_MFIFOHI)) {
			/* data is in FIFO, read it */
			if (priv->msg_buf_remaining)
				FUNC1(priv);
		}
	}

	/* Transfer complete */
	if (status & XLP9XX_I2C_INTEN_DATADONE)
		goto xfer_done;

	return IRQ_HANDLED;

xfer_done:
	FUNC5(priv, XLP9XX_I2C_INTEN, 0);
	FUNC0(&priv->msg_complete);
	return IRQ_HANDLED;
}