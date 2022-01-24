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
typedef  int /*<<< orphan*/  u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MODE_ACTIVE ; 
 int /*<<< orphan*/  MODE_ACTIVE_STRING ; 
 int /*<<< orphan*/  MODE_STANDBY ; 
 int /*<<< orphan*/  MODE_STANDBY_STRING ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ipsps_regs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *devattr,
				const char *buf, size_t count)
{
	u8 reg;
	int rc;
	struct i2c_client *client = FUNC2(dev->parent);
	struct sensor_device_attribute *attr = FUNC3(devattr);

	reg = ipsps_regs[attr->index];
	if (FUNC1(MODE_STANDBY_STRING, buf)) {
		rc = FUNC0(client, reg,
					       MODE_STANDBY);
		if (rc < 0)
			return rc;
		return count;
	} else if (FUNC1(MODE_ACTIVE_STRING, buf)) {
		rc = FUNC0(client, reg,
					       MODE_ACTIVE);
		if (rc < 0)
			return rc;
		return count;
	}

	return -EINVAL;
}