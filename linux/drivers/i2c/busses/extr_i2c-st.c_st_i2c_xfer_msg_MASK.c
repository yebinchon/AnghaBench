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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct st_i2c_client {int addr; int result; int stop; scalar_t__ xfered; int /*<<< orphan*/  count; int /*<<< orphan*/  buf; } ;
struct st_i2c_dev {scalar_t__ base; int /*<<< orphan*/  dev; TYPE_1__ adap; int /*<<< orphan*/  complete; struct st_i2c_client client; } ;
struct i2c_msg {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int I2C_M_RD ; 
 scalar_t__ SSC_CLR ; 
 int SSC_CLR_REPSTRT ; 
 int SSC_CLR_SSCSTOP ; 
 scalar_t__ SSC_CTL ; 
 int SSC_CTL_EN ; 
 int SSC_CTL_EN_RX_FIFO ; 
 int SSC_CTL_EN_TX_FIFO ; 
 int SSC_CTL_MS ; 
 scalar_t__ SSC_I2C ; 
 int SSC_I2C_ACKG ; 
 int SSC_I2C_REPSTRTG ; 
 int SSC_I2C_STOPG ; 
 int SSC_I2C_STRTG ; 
 int SSC_I2C_TXENB ; 
 scalar_t__ SSC_IEN ; 
 int SSC_IEN_ARBLEN ; 
 int SSC_IEN_NACKEN ; 
 int SSC_IEN_TEEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int FUNC5 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct st_i2c_dev*,int) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct st_i2c_dev *i2c_dev, struct i2c_msg *msg,
			    bool is_first, bool is_last)
{
	struct st_i2c_client *c = &i2c_dev->client;
	u32 ctl, i2c, it;
	unsigned long timeout;
	int ret;

	c->addr		= FUNC1(msg);
	c->buf		= msg->buf;
	c->count	= msg->len;
	c->xfered	= 0;
	c->result	= 0;
	c->stop		= is_last;

	FUNC2(&i2c_dev->complete);

	ctl = SSC_CTL_EN | SSC_CTL_MS |	SSC_CTL_EN_RX_FIFO | SSC_CTL_EN_TX_FIFO;
	FUNC4(i2c_dev->base + SSC_CTL, ctl);

	i2c = SSC_I2C_TXENB;
	if (c->addr & I2C_M_RD)
		i2c |= SSC_I2C_ACKG;
	FUNC4(i2c_dev->base + SSC_I2C, i2c);

	/* Write slave address */
	FUNC7(i2c_dev, c->addr);

	/* Pre-fill Tx fifo with data in case of write */
	if (!(c->addr & I2C_M_RD))
		FUNC6(i2c_dev);

	it = SSC_IEN_NACKEN | SSC_IEN_TEEN | SSC_IEN_ARBLEN;
	FUNC9(it, i2c_dev->base + SSC_IEN);

	if (is_first) {
		ret = FUNC5(i2c_dev);
		if (ret)
			return ret;

		FUNC4(i2c_dev->base + SSC_I2C, SSC_I2C_STRTG);
	}

	timeout = FUNC8(&i2c_dev->complete,
			i2c_dev->adap.timeout);
	ret = c->result;

	if (!timeout) {
		FUNC0(i2c_dev->dev, "Write to slave 0x%x timed out\n",
				c->addr);
		ret = -ETIMEDOUT;
	}

	i2c = SSC_I2C_STOPG | SSC_I2C_REPSTRTG;
	FUNC3(i2c_dev->base + SSC_I2C, i2c);

	FUNC9(SSC_CLR_SSCSTOP | SSC_CLR_REPSTRT,
			i2c_dev->base + SSC_CLR);

	return ret;
}