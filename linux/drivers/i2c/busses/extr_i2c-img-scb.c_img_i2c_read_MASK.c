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
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct img_i2c {int /*<<< orphan*/  check_timer; TYPE_1__ msg; int /*<<< orphan*/  int_enable; int /*<<< orphan*/  last_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_SLAVE_EVENT ; 
 int /*<<< orphan*/  MODE_AUTOMATIC ; 
 int /*<<< orphan*/  SCB_INT_MASK_REG ; 
 int /*<<< orphan*/  SCB_READ_ADDR_REG ; 
 int /*<<< orphan*/  SCB_READ_COUNT_REG ; 
 int /*<<< orphan*/  FUNC0 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct img_i2c *i2c)
{
	FUNC0(i2c, MODE_AUTOMATIC);
	if (!i2c->last_msg)
		i2c->int_enable |= INT_SLAVE_EVENT;

	FUNC1(i2c, SCB_INT_MASK_REG, i2c->int_enable);
	FUNC1(i2c, SCB_READ_ADDR_REG, i2c->msg.addr);
	FUNC1(i2c, SCB_READ_COUNT_REG, i2c->msg.len);

	FUNC2(&i2c->check_timer, jiffies + FUNC3(1));
}