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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ * buf; } ;
struct img_i2c {int /*<<< orphan*/  int_enable; TYPE_1__ msg; } ;

/* Variables and functions */
 int FIFO_WRITE_FULL ; 
 int /*<<< orphan*/  INT_FIFO_EMPTYING ; 
 int /*<<< orphan*/  SCB_FIFO_STATUS_REG ; 
 int /*<<< orphan*/  SCB_WRITE_DATA_REG ; 
 int FUNC0 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct img_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct img_i2c *i2c)
{
	while (i2c->msg.len) {
		u32 fifo_status;

		FUNC1(i2c);
		fifo_status = FUNC0(i2c, SCB_FIFO_STATUS_REG);
		if (fifo_status & FIFO_WRITE_FULL)
			break;

		FUNC2(i2c, SCB_WRITE_DATA_REG, *i2c->msg.buf);
		i2c->msg.len--;
		i2c->msg.buf++;
	}

	/* Disable fifo emptying interrupt if nothing more to write */
	if (!i2c->msg.len)
		i2c->int_enable &= ~INT_FIFO_EMPTYING;
}