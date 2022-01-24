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
struct i2c_msg {int dummy; } ;
struct dc_i2c {int last; int error; int /*<<< orphan*/  state; int /*<<< orphan*/  done; int /*<<< orphan*/  lock; scalar_t__ msgbuf_ptr; struct i2c_msg* msg; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int /*<<< orphan*/  TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct dc_i2c*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_i2c*,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct dc_i2c *i2c, struct i2c_msg *msg, int first,
			   int last)
{
	unsigned long timeout = FUNC2(TIMEOUT_MS);
	unsigned long flags;

	FUNC4(&i2c->lock, flags);
	i2c->msg = msg;
	i2c->msgbuf_ptr = 0;
	i2c->last = last;
	i2c->error = 0;

	FUNC3(&i2c->done);
	FUNC0(i2c, 1);
	FUNC1(i2c, first);
	FUNC5(&i2c->lock, flags);

	timeout = FUNC6(&i2c->done, timeout);
	FUNC0(i2c, 0);
	if (timeout == 0) {
		i2c->state = STATE_IDLE;
		return -ETIMEDOUT;
	}

	if (i2c->error)
		return i2c->error;

	return 0;
}