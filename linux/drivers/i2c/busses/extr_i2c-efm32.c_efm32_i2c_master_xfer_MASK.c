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
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct efm32_i2c_ddata {int num_msgs; int current_msg; int retval; int /*<<< orphan*/  done; TYPE_1__ adapter; scalar_t__ current_word; struct i2c_msg* msgs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  REG_STATE ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efm32_i2c_ddata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_i2c_ddata*) ; 
 struct efm32_i2c_ddata* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap,
		struct i2c_msg *msgs, int num)
{
	struct efm32_i2c_ddata *ddata = FUNC3(adap);
	int ret;

	if (ddata->msgs)
		return -EBUSY;

	ddata->msgs = msgs;
	ddata->num_msgs = num;
	ddata->current_word = 0;
	ddata->current_msg = 0;
	ddata->retval = -EIO;

	FUNC4(&ddata->done);

	FUNC0(&ddata->adapter.dev, "state: %08x, status: %08x\n",
			FUNC1(ddata, REG_STATE),
			FUNC1(ddata, REG_STATUS));

	FUNC2(ddata);

	FUNC5(&ddata->done);

	if (ddata->current_msg >= ddata->num_msgs)
		ret = ddata->num_msgs;
	else
		ret = ddata->retval;

	return ret;
}