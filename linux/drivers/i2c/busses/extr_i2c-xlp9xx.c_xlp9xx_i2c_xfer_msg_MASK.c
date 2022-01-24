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
struct xlp9xx_i2c_dev {int msg_buf_remaining; int msg_len; int msg_err; int msg_read; int len_recv; int client_pec; int /*<<< orphan*/  dev; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  msg_buf; } ;
struct i2c_msg {int len; int flags; int addr; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
 int I2C_CLIENT_PEC ; 
 int I2C_M_RD ; 
 int I2C_M_RECV_LEN ; 
 int I2C_M_TEN ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  XLP9XX_I2C_CMD ; 
 int XLP9XX_I2C_CMD_READ ; 
 int XLP9XX_I2C_CMD_START ; 
 int XLP9XX_I2C_CMD_STOP ; 
 int XLP9XX_I2C_CMD_WRITE ; 
 int /*<<< orphan*/  XLP9XX_I2C_CTRL ; 
 int XLP9XX_I2C_CTRL_ADDMODE ; 
 int XLP9XX_I2C_CTRL_FIFORD ; 
 int XLP9XX_I2C_CTRL_MCTLEN_MASK ; 
 int XLP9XX_I2C_CTRL_MCTLEN_SHIFT ; 
 int XLP9XX_I2C_INTEN_ARLOST ; 
 int XLP9XX_I2C_INTEN_BUSERR ; 
 int XLP9XX_I2C_INTEN_DATADONE ; 
 int XLP9XX_I2C_INTEN_MFIFOEMTY ; 
 int XLP9XX_I2C_INTEN_MFIFOHI ; 
 int XLP9XX_I2C_INTEN_NACKADDR ; 
 int XLP9XX_I2C_INTEN_SADDR ; 
 int /*<<< orphan*/  XLP9XX_I2C_MFIFOCTRL ; 
 int XLP9XX_I2C_MFIFOCTRL_RST ; 
 int /*<<< orphan*/  XLP9XX_I2C_SLAVEADDR ; 
 int XLP9XX_I2C_SLAVEADDR_ADDR_SHIFT ; 
 int XLP9XX_I2C_SLAVEADDR_RW ; 
 int /*<<< orphan*/  XLP9XX_I2C_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct xlp9xx_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xlp9xx_i2c_dev*) ; 
 int FUNC8 (struct xlp9xx_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xlp9xx_i2c_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct xlp9xx_i2c_dev *priv, struct i2c_msg *msg,
			       int last_msg)
{
	unsigned long timeleft;
	u32 intr_mask, cmd, val, len;

	priv->msg_buf = msg->buf;
	priv->msg_buf_remaining = priv->msg_len = msg->len;
	priv->msg_err = 0;
	priv->msg_read = (msg->flags & I2C_M_RD);
	FUNC2(&priv->msg_complete);

	/* Reset FIFO */
	FUNC9(priv, XLP9XX_I2C_MFIFOCTRL,
			     XLP9XX_I2C_MFIFOCTRL_RST);

	/* set slave addr */
	FUNC9(priv, XLP9XX_I2C_SLAVEADDR,
			     (msg->addr << XLP9XX_I2C_SLAVEADDR_ADDR_SHIFT) |
			     (priv->msg_read ? XLP9XX_I2C_SLAVEADDR_RW : 0));

	/* Build control word for transfer */
	val = FUNC8(priv, XLP9XX_I2C_CTRL);
	if (!priv->msg_read)
		val &= ~XLP9XX_I2C_CTRL_FIFORD;
	else
		val |= XLP9XX_I2C_CTRL_FIFORD;	/* read */

	if (msg->flags & I2C_M_TEN)
		val |= XLP9XX_I2C_CTRL_ADDMODE;	/* 10-bit address mode*/
	else
		val &= ~XLP9XX_I2C_CTRL_ADDMODE;

	priv->len_recv = msg->flags & I2C_M_RECV_LEN;
	len = priv->len_recv ? I2C_SMBUS_BLOCK_MAX + 2 : msg->len;
	priv->client_pec = msg->flags & I2C_CLIENT_PEC;

	/* set FIFO threshold if reading */
	if (priv->msg_read)
		FUNC7(priv);

	/* set data length to be transferred */
	val = (val & ~XLP9XX_I2C_CTRL_MCTLEN_MASK) |
	      (len << XLP9XX_I2C_CTRL_MCTLEN_SHIFT);
	FUNC9(priv, XLP9XX_I2C_CTRL, val);

	/* fill fifo during tx */
	if (!priv->msg_read)
		FUNC4(priv);

	/* set interrupt mask */
	intr_mask = (XLP9XX_I2C_INTEN_ARLOST | XLP9XX_I2C_INTEN_BUSERR |
		     XLP9XX_I2C_INTEN_NACKADDR | XLP9XX_I2C_INTEN_DATADONE);

	if (priv->msg_read) {
		intr_mask |= XLP9XX_I2C_INTEN_MFIFOHI;
		if (msg->len == 0)
			intr_mask |= XLP9XX_I2C_INTEN_SADDR;
	} else {
		if (msg->len == 0)
			intr_mask |= XLP9XX_I2C_INTEN_SADDR;
		else
			intr_mask |= XLP9XX_I2C_INTEN_MFIFOEMTY;
	}
	FUNC6(priv, intr_mask);

	/* set cmd reg */
	cmd = XLP9XX_I2C_CMD_START;
	if (msg->len)
		cmd |= (priv->msg_read ?
			XLP9XX_I2C_CMD_READ : XLP9XX_I2C_CMD_WRITE);
	if (last_msg)
		cmd |= XLP9XX_I2C_CMD_STOP;

	FUNC9(priv, XLP9XX_I2C_CMD, cmd);

	timeleft = FUNC1(XLP9XX_I2C_TIMEOUT_MS);
	timeleft = FUNC3(&priv->msg_complete, timeleft);

	if (priv->msg_err & XLP9XX_I2C_INTEN_BUSERR) {
		FUNC0(priv->dev, "transfer error %x!\n", priv->msg_err);
		FUNC9(priv, XLP9XX_I2C_CMD, XLP9XX_I2C_CMD_STOP);
		return -EIO;
	} else if (priv->msg_err & XLP9XX_I2C_INTEN_NACKADDR) {
		return -ENXIO;
	}

	if (timeleft == 0) {
		FUNC0(priv->dev, "i2c transfer timed out!\n");
		FUNC5(priv);
		return -ETIMEDOUT;
	}

	/* update msg->len with actual received length */
	if (msg->flags & I2C_M_RECV_LEN) {
		if (!priv->msg_len)
			return -EPROTO;
		msg->len = priv->msg_len;
	}
	return 0;
}