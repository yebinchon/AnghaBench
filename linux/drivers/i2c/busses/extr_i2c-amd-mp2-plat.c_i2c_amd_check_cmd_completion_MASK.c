#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  timeout; } ;
struct amd_i2c_common {scalar_t__ reqcmd; int /*<<< orphan*/  cmd_success; TYPE_1__* msg; } ;
struct amd_i2c_dev {TYPE_2__ adap; int /*<<< orphan*/  cmd_complete; struct amd_i2c_common common; } ;
struct TYPE_3__ {int len; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct amd_i2c_common*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_i2c_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_i2c_common*) ; 
 scalar_t__ i2c_read ; 
 scalar_t__ i2c_write ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct amd_i2c_dev *i2c_dev)
{
	struct amd_i2c_common *i2c_common = &i2c_dev->common;
	unsigned long timeout;

	timeout = FUNC3(&i2c_dev->cmd_complete,
					      i2c_dev->adap.timeout);

	if ((i2c_common->reqcmd == i2c_read ||
	     i2c_common->reqcmd == i2c_write) &&
	    i2c_common->msg->len > 32)
		FUNC2(i2c_common);

	if (timeout == 0) {
		FUNC1(i2c_common);
		return -ETIMEDOUT;
	}

	FUNC0(i2c_common);

	if (!i2c_common->cmd_success)
		return -EIO;

	return 0;
}