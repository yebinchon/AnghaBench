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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct jz4780_i2c {TYPE_1__ adap; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ4780_I2C_CINTR ; 
 int /*<<< orphan*/  JZ4780_I2C_CTRL ; 
 unsigned short JZ4780_I2C_CTRL_STPHLD ; 
 int /*<<< orphan*/  JZ4780_I2C_CTXABRT ; 
 unsigned short JZ4780_I2C_ENB_I2C ; 
 int /*<<< orphan*/  JZ4780_I2C_INTM ; 
 int /*<<< orphan*/  JZ4780_I2C_INTST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct jz4780_i2c*) ; 
 unsigned short FUNC2 (struct jz4780_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_i2c*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned short) ; 

__attribute__((used)) static int FUNC8(struct jz4780_i2c *i2c)
{
	int ret;
	unsigned long flags;
	unsigned short tmp;

	FUNC4(&i2c->lock, flags);

	/* can send stop now if need */
	tmp = FUNC2(i2c, JZ4780_I2C_CTRL);
	tmp &= ~JZ4780_I2C_CTRL_STPHLD;
	FUNC3(i2c, JZ4780_I2C_CTRL, tmp);

	/* disable all interrupts first */
	FUNC3(i2c, JZ4780_I2C_INTM, 0);

	/* then clear all interrupts */
	FUNC2(i2c, JZ4780_I2C_CTXABRT);
	FUNC2(i2c, JZ4780_I2C_CINTR);

	/* then disable the controller */
	tmp = FUNC2(i2c, JZ4780_I2C_CTRL);
	tmp &= ~JZ4780_I2C_ENB_I2C;
	FUNC3(i2c, JZ4780_I2C_CTRL, tmp);
	FUNC6(10);
	tmp |= JZ4780_I2C_ENB_I2C;
	FUNC3(i2c, JZ4780_I2C_CTRL, tmp);

	FUNC5(&i2c->lock, flags);

	ret = FUNC1(i2c);
	if (ret)
		FUNC0(&i2c->adap.dev,
			"unable to disable device during cleanup!\n");

	if (FUNC7(FUNC2(i2c, JZ4780_I2C_INTM)
		     & FUNC2(i2c, JZ4780_I2C_INTST)))
		FUNC0(&i2c->adap.dev,
			"device has interrupts after a complete cleanup!\n");

	return ret;
}