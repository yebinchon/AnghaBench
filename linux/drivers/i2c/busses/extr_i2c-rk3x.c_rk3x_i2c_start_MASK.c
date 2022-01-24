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
struct rk3x_i2c {TYPE_1__* msg; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int I2C_M_IGNORE_NAK ; 
 int /*<<< orphan*/  REG_CON ; 
 int REG_CON_ACTACK ; 
 int REG_CON_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int REG_CON_START ; 
 int REG_CON_TUNING_MASK ; 
 int /*<<< orphan*/  REG_IEN ; 
 int REG_INT_START ; 
 int FUNC1 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk3x_i2c*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rk3x_i2c *i2c)
{
	u32 val = FUNC1(i2c, REG_CON) & REG_CON_TUNING_MASK;

	FUNC2(i2c, REG_INT_START, REG_IEN);

	/* enable adapter with correct mode, send START condition */
	val |= REG_CON_EN | FUNC0(i2c->mode) | REG_CON_START;

	/* if we want to react to NACK, set ACTACK bit */
	if (!(i2c->msg->flags & I2C_M_IGNORE_NAK))
		val |= REG_CON_ACTACK;

	FUNC2(i2c, val, REG_CON);
}