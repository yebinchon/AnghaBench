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
struct dc_i2c {int /*<<< orphan*/  done; scalar_t__ last; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  II_CMD_STOP ; 
 int /*<<< orphan*/  STATE_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dc_i2c *i2c)
{
	i2c->state = STATE_STOP;
	if (i2c->last)
		FUNC1(i2c, II_CMD_STOP);
	else
		FUNC0(&i2c->done);
}