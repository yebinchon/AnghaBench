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
struct rk3x_i2c {int busy; int /*<<< orphan*/  wait; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  REG_CON ; 
 unsigned int REG_CON_STOP ; 
 unsigned int REG_INT_STOP ; 
 int /*<<< orphan*/  REG_IPD ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk3x_i2c*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rk3x_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rk3x_i2c *i2c, unsigned int ipd)
{
	unsigned int con;

	if (!(ipd & REG_INT_STOP)) {
		FUNC4(i2c, -EIO);
		FUNC0(i2c->dev, "unexpected irq in STOP: 0x%x\n", ipd);
		FUNC3(i2c);
		return;
	}

	/* ack interrupt */
	FUNC2(i2c, REG_INT_STOP, REG_IPD);

	/* disable STOP bit */
	con = FUNC1(i2c, REG_CON);
	con &= ~REG_CON_STOP;
	FUNC2(i2c, con, REG_CON);

	i2c->busy = false;
	i2c->state = STATE_IDLE;

	/* signal rk3x_i2c_xfer that we are finished */
	FUNC5(&i2c->wait);
}