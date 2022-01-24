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
struct rk3x_i2c {scalar_t__ processed; int /*<<< orphan*/  error; TYPE_1__* msg; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 unsigned int REG_INT_MBTF ; 
 int /*<<< orphan*/  REG_IPD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rk3x_i2c*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk3x_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct rk3x_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rk3x_i2c *i2c, unsigned int ipd)
{
	if (!(ipd & REG_INT_MBTF)) {
		FUNC4(i2c, -EIO);
		FUNC0(i2c->dev, "unexpected irq in WRITE: 0x%x\n", ipd);
		FUNC2(i2c);
		return;
	}

	/* ack interrupt */
	FUNC1(i2c, REG_INT_MBTF, REG_IPD);

	/* are we finished? */
	if (i2c->processed == i2c->msg->len)
		FUNC4(i2c, i2c->error);
	else
		FUNC3(i2c);
}