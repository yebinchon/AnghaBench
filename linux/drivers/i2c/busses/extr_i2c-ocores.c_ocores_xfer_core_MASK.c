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
typedef  int u8 ;
struct ocores_i2c {int nmsgs; scalar_t__ state; int /*<<< orphan*/  wait; struct i2c_msg* msg; scalar_t__ pos; } ;
struct i2c_msg {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  OCI2C_CMD ; 
 int OCI2C_CMD_START ; 
 int /*<<< orphan*/  OCI2C_CONTROL ; 
 int OCI2C_CTRL_IEN ; 
 int /*<<< orphan*/  OCI2C_DATA ; 
 scalar_t__ STATE_DONE ; 
 scalar_t__ STATE_ERROR ; 
 scalar_t__ STATE_START ; 
 int FUNC0 (struct i2c_msg*) ; 
 int FUNC1 (struct ocores_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocores_i2c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocores_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocores_i2c*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ocores_i2c *i2c,
			    struct i2c_msg *msgs, int num,
			    bool polling)
{
	int ret;
	u8 ctrl;

	ctrl = FUNC1(i2c, OCI2C_CONTROL);
	if (polling)
		FUNC2(i2c, OCI2C_CONTROL, ctrl & ~OCI2C_CTRL_IEN);
	else
		FUNC2(i2c, OCI2C_CONTROL, ctrl | OCI2C_CTRL_IEN);

	i2c->msg = msgs;
	i2c->pos = 0;
	i2c->nmsgs = num;
	i2c->state = STATE_START;

	FUNC2(i2c, OCI2C_DATA, FUNC0(i2c->msg));
	FUNC2(i2c, OCI2C_CMD, OCI2C_CMD_START);

	if (polling) {
		FUNC3(i2c);
	} else {
		ret = FUNC5(i2c->wait,
					 (i2c->state == STATE_ERROR) ||
					 (i2c->state == STATE_DONE), HZ);
		if (ret == 0) {
			FUNC4(i2c);
			return -ETIMEDOUT;
		}
	}

	return (i2c->state == STATE_DONE) ? num : -EIO;
}