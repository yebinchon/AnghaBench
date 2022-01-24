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
struct TYPE_2__ {int /*<<< orphan*/  mp2_dev; } ;
struct amd_i2c_dev {TYPE_1__ common; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amd_i2c_dev*,struct i2c_msg*) ; 
 struct amd_i2c_dev* FUNC3 (struct i2c_adapter*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	struct amd_i2c_dev *i2c_dev = FUNC3(adap);
	int i;
	struct i2c_msg *pmsg;
	int err;

	/* the adapter might have been deleted while waiting for the bus lock */
	if (FUNC4(!i2c_dev->common.mp2_dev))
		return -EINVAL;

	FUNC0(i2c_dev->common.mp2_dev);

	for (i = 0; i < num; i++) {
		pmsg = &msgs[i];
		err = FUNC2(i2c_dev, pmsg);
		if (err)
			break;
	}

	FUNC1(i2c_dev->common.mp2_dev);
	return err ? err : num;
}