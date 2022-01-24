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
struct TYPE_3__ {int boot; int core; int app; int param; } ;
struct mip4_ts {TYPE_2__* input; TYPE_1__ fw_version; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct mip4_ts* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct i2c_client *client = FUNC4(dev);
	struct mip4_ts *ts = FUNC0(client);
	size_t count;

	/* Take lock to prevent racing with firmware update */
	FUNC1(&ts->input->mutex);

	count = FUNC3(buf, PAGE_SIZE, "%04X %04X %04X %04X\n",
			 ts->fw_version.boot, ts->fw_version.core,
			 ts->fw_version.app, ts->fw_version.param);

	FUNC2(&ts->input->mutex);

	return count;
}