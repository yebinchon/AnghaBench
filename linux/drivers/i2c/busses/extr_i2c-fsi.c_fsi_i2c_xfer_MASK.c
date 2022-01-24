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
struct i2c_adapter {unsigned long timeout; struct fsi_i2c_port* algo_data; } ;
struct fsi_i2c_port {struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct fsi_i2c_port*) ; 
 int FUNC1 (struct fsi_i2c_port*,struct i2c_msg*,int) ; 
 int FUNC2 (struct fsi_i2c_port*,struct i2c_msg*,unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap, struct i2c_msg *msgs,
			int num)
{
	int i, rc;
	unsigned long start_time;
	struct fsi_i2c_port *port = adap->algo_data;
	struct fsi_i2c_master *master = port->master;
	struct i2c_msg *msg;

	FUNC3(&master->lock);

	rc = FUNC0(port);
	if (rc)
		goto unlock;

	for (i = 0; i < num; i++) {
		msg = msgs + i;
		start_time = jiffies;

		rc = FUNC1(port, msg, i == num - 1);
		if (rc)
			goto unlock;

		rc = FUNC2(port, msg,
				  adap->timeout - (jiffies - start_time));
		if (rc)
			goto unlock;
	}

unlock:
	FUNC4(&master->lock);
	return rc ? : num;
}