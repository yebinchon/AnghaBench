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
struct st_i2c_client {int addr; int count; int /*<<< orphan*/  result; int /*<<< orphan*/  xfered; } ;
struct st_i2c_dev {scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; struct st_i2c_client client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SSC_CLR ; 
 int SSC_CLR_NACK ; 
 int SSC_CLR_SSCARBL ; 
 scalar_t__ SSC_I2C ; 
 int /*<<< orphan*/  SSC_I2C_STOPG ; 
 scalar_t__ SSC_IEN ; 
 int SSC_IEN_ARBLEN ; 
 int SSC_IEN_STOPEN ; 
 scalar_t__ SSC_STA ; 
#define  SSC_STA_ARBL 132 
#define  SSC_STA_NACK 131 
#define  SSC_STA_REPSTRT 130 
#define  SSC_STA_STOP 129 
#define  SSC_STA_TE 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct st_i2c_dev *i2c_dev = data;
	struct st_i2c_client *c = &i2c_dev->client;
	u32 sta, ien;
	int it;

	ien = FUNC5(i2c_dev->base + SSC_IEN);
	sta = FUNC5(i2c_dev->base + SSC_STA);

	/* Use __fls() to check error bits first */
	it = FUNC0(sta & ien);
	if (it < 0) {
		FUNC2(i2c_dev->dev, "spurious it (sta=0x%04x, ien=0x%04x)\n",
				sta, ien);
		return IRQ_NONE;
	}

	switch (1 << it) {
	case SSC_STA_TE:
		if (c->addr & I2C_M_RD)
			FUNC6(i2c_dev);
		else
			FUNC7(i2c_dev);
		break;

	case SSC_STA_STOP:
	case SSC_STA_REPSTRT:
		FUNC9(0, i2c_dev->base + SSC_IEN);
		FUNC1(&i2c_dev->complete);
		break;

	case SSC_STA_NACK:
		FUNC9(SSC_CLR_NACK, i2c_dev->base + SSC_CLR);

		/* Last received byte handled by NACK interrupt */
		if ((c->addr & I2C_M_RD) && (c->count == 1) && (c->xfered)) {
			FUNC6(i2c_dev);
			break;
		}

		it = SSC_IEN_STOPEN | SSC_IEN_ARBLEN;
		FUNC9(it, i2c_dev->base + SSC_IEN);

		FUNC8(i2c_dev->base + SSC_I2C, SSC_I2C_STOPG);
		c->result = -EIO;
		break;

	case SSC_STA_ARBL:
		FUNC9(SSC_CLR_SSCARBL, i2c_dev->base + SSC_CLR);

		it = SSC_IEN_STOPEN | SSC_IEN_ARBLEN;
		FUNC9(it, i2c_dev->base + SSC_IEN);

		FUNC8(i2c_dev->base + SSC_I2C, SSC_I2C_STOPG);
		c->result = -EAGAIN;
		break;

	default:
		FUNC3(i2c_dev->dev,
				"it %d unhandled (sta=0x%04x)\n", it, sta);
	}

	/*
	 * Read IEN register to ensure interrupt mask write is effective
	 * before re-enabling interrupt at GIC level, and thus avoid spurious
	 * interrupts.
	 */
	FUNC4(i2c_dev->base + SSC_IEN);

	return IRQ_HANDLED;
}