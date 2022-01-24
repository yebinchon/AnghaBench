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
 int /*<<< orphan*/  I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ipsps_regs ; 
 char* FUNC1 (char*,char,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *devattr,
				 char *buf)
{
	u8 reg;
	int rc;
	char *p;
	char data[I2C_SMBUS_BLOCK_MAX + 1];
	struct i2c_client *client = FUNC3(dev->parent);
	struct sensor_device_attribute *attr = FUNC4(devattr);

	reg = ipsps_regs[attr->index];
	rc = FUNC0(client, reg, data);
	if (rc < 0)
		return rc;

	/* filled with printable characters, ending with # */
	p = FUNC1(data, '#', rc);
	*p = '\0';

	return FUNC2(buf, PAGE_SIZE, "%s\n", data);
}