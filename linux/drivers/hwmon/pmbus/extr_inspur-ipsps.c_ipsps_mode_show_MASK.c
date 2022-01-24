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
#define  MODE_ACTIVE 130 
 char* MODE_ACTIVE_STRING ; 
#define  MODE_REDUNDANCY 129 
 char* MODE_REDUNDANCY_STRING ; 
#define  MODE_STANDBY 128 
 char* MODE_STANDBY_STRING ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ipsps_regs ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *devattr, char *buf)
{
	u8 reg;
	int rc;
	struct i2c_client *client = FUNC2(dev->parent);
	struct sensor_device_attribute *attr = FUNC3(devattr);

	reg = ipsps_regs[attr->index];
	rc = FUNC0(client, reg);
	if (rc < 0)
		return rc;

	switch (rc) {
	case MODE_ACTIVE:
		return FUNC1(buf, PAGE_SIZE, "[%s] %s %s\n",
				MODE_ACTIVE_STRING,
				MODE_STANDBY_STRING, MODE_REDUNDANCY_STRING);
	case MODE_STANDBY:
		return FUNC1(buf, PAGE_SIZE, "%s [%s] %s\n",
				MODE_ACTIVE_STRING,
				MODE_STANDBY_STRING, MODE_REDUNDANCY_STRING);
	case MODE_REDUNDANCY:
		return FUNC1(buf, PAGE_SIZE, "%s %s [%s]\n",
				MODE_ACTIVE_STRING,
				MODE_STANDBY_STRING, MODE_REDUNDANCY_STRING);
	default:
		return FUNC1(buf, PAGE_SIZE, "unspecified\n");
	}
}