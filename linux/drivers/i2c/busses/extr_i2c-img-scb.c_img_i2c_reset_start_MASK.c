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
struct img_i2c {int at_slave_event; int at_t_done; int at_cur_cmd; int /*<<< orphan*/  seq; int /*<<< orphan*/  int_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_SEQUENCE ; 
 int /*<<< orphan*/  SCB_INT_MASK_REG ; 
 int /*<<< orphan*/  img_i2c_reset_seq ; 
 int /*<<< orphan*/  FUNC0 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct img_i2c *i2c)
{
	/* Initiate the magic dance */
	FUNC1(i2c, MODE_SEQUENCE);
	FUNC2(i2c, SCB_INT_MASK_REG, i2c->int_enable);
	i2c->seq = img_i2c_reset_seq;
	i2c->at_slave_event = true;
	i2c->at_t_done = true;
	i2c->at_cur_cmd = -1;

	/* img_i2c_reset_seq isn't empty so the following won't fail */
	FUNC0(i2c, 0);
}