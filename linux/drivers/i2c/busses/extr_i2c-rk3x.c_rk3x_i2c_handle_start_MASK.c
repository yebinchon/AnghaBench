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
struct rk3x_i2c {scalar_t__ mode; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  REG_CON ; 
 scalar_t__ REG_CON_MOD_TX ; 
 unsigned int REG_CON_START ; 
 int /*<<< orphan*/  REG_IEN ; 
 unsigned int REG_INT_MBRF ; 
 unsigned int REG_INT_MBTF ; 
 unsigned int REG_INT_NAKRCV ; 
 unsigned int REG_INT_START ; 
 int /*<<< orphan*/  REG_IPD ; 
 int /*<<< orphan*/  STATE_READ ; 
 int /*<<< orphan*/  STATE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk3x_i2c*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rk3x_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk3x_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct rk3x_i2c*) ; 
 int /*<<< orphan*/  FUNC6 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rk3x_i2c *i2c, unsigned int ipd)
{
	if (!(ipd & REG_INT_START)) {
		FUNC6(i2c, -EIO);
		FUNC0(i2c->dev, "unexpected irq in START: 0x%x\n", ipd);
		FUNC3(i2c);
		return;
	}

	/* ack interrupt */
	FUNC2(i2c, REG_INT_START, REG_IPD);

	/* disable start bit */
	FUNC2(i2c, FUNC1(i2c, REG_CON) & ~REG_CON_START, REG_CON);

	/* enable appropriate interrupts and transition */
	if (i2c->mode == REG_CON_MOD_TX) {
		FUNC2(i2c, REG_INT_MBTF | REG_INT_NAKRCV, REG_IEN);
		i2c->state = STATE_WRITE;
		FUNC4(i2c);
	} else {
		/* in any other case, we are going to be reading. */
		FUNC2(i2c, REG_INT_MBRF | REG_INT_NAKRCV, REG_IEN);
		i2c->state = STATE_READ;
		FUNC5(i2c);
	}
}