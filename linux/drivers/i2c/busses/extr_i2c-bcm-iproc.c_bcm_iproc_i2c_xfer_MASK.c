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
struct i2c_adapter {int dummy; } ;
struct bcm_iproc_i2c_dev {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (struct bcm_iproc_i2c_dev*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct bcm_iproc_i2c_dev* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adapter,
			      struct i2c_msg msgs[], int num)
{
	struct bcm_iproc_i2c_dev *iproc_i2c = FUNC2(adapter);
	int ret, i;

	/* go through all messages */
	for (i = 0; i < num; i++) {
		ret = FUNC0(iproc_i2c, &msgs[i]);
		if (ret) {
			FUNC1(iproc_i2c->device, "xfer failed\n");
			return ret;
		}
	}

	return num;
}