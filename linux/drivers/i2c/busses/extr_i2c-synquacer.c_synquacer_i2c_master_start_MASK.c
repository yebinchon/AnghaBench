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
struct synquacer_i2c {int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  pclkrate; } ;
struct i2c_msg {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 unsigned char SYNQUACER_I2C_BCR_BEIE ; 
 unsigned char SYNQUACER_I2C_BCR_INTE ; 
 unsigned char SYNQUACER_I2C_BCR_MSS ; 
 unsigned char SYNQUACER_I2C_BCR_SCC ; 
 unsigned char SYNQUACER_I2C_BSR_AL ; 
 unsigned char SYNQUACER_I2C_BSR_BB ; 
 scalar_t__ SYNQUACER_I2C_REG_BCR ; 
 scalar_t__ SYNQUACER_I2C_REG_BSR ; 
 scalar_t__ SYNQUACER_I2C_REG_DAR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned char FUNC2 (struct i2c_msg*) ; 
 unsigned char FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct synquacer_i2c *i2c,
				      struct i2c_msg *pmsg)
{
	unsigned char bsr, bcr;

	FUNC4(FUNC2(pmsg), i2c->base + SYNQUACER_I2C_REG_DAR);

	FUNC1(i2c->dev, "slave:0x%02x\n", pmsg->addr);

	/* Generate Start Condition */
	bsr = FUNC3(i2c->base + SYNQUACER_I2C_REG_BSR);
	bcr = FUNC3(i2c->base + SYNQUACER_I2C_REG_BCR);
	FUNC1(i2c->dev, "bsr:0x%02x, bcr:0x%02x\n", bsr, bcr);

	if ((bsr & SYNQUACER_I2C_BSR_BB) &&
	    !(bcr & SYNQUACER_I2C_BCR_MSS)) {
		FUNC1(i2c->dev, "bus is busy");
		return -EBUSY;
	}

	if (bsr & SYNQUACER_I2C_BSR_BB) { /* Bus is busy */
		FUNC1(i2c->dev, "Continuous Start");
		FUNC4(bcr | SYNQUACER_I2C_BCR_SCC,
		       i2c->base + SYNQUACER_I2C_REG_BCR);
	} else {
		if (bcr & SYNQUACER_I2C_BCR_MSS) {
			FUNC1(i2c->dev, "not in master mode");
			return -EAGAIN;
		}
		FUNC1(i2c->dev, "Start Condition");
		/* Start Condition + Enable Interrupts */
		FUNC4(bcr | SYNQUACER_I2C_BCR_MSS |
		       SYNQUACER_I2C_BCR_INTE | SYNQUACER_I2C_BCR_BEIE,
		       i2c->base + SYNQUACER_I2C_REG_BCR);
	}

	FUNC0(10, i2c->pclkrate);

	/* get BSR & BCR registers */
	bsr = FUNC3(i2c->base + SYNQUACER_I2C_REG_BSR);
	bcr = FUNC3(i2c->base + SYNQUACER_I2C_REG_BCR);
	FUNC1(i2c->dev, "bsr:0x%02x, bcr:0x%02x\n", bsr, bcr);

	if ((bsr & SYNQUACER_I2C_BSR_AL) ||
	    !(bcr & SYNQUACER_I2C_BCR_MSS)) {
		FUNC1(i2c->dev, "arbitration lost\n");
		return -EAGAIN;
	}

	return 0;
}