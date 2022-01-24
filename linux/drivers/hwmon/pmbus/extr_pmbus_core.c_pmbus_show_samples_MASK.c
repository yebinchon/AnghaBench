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
struct pmbus_samples_reg {TYPE_1__* attr; int /*<<< orphan*/  page; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 
 struct pmbus_samples_reg* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				  struct device_attribute *devattr, char *buf)
{
	int val;
	struct i2c_client *client = FUNC2(dev->parent);
	struct pmbus_samples_reg *reg = FUNC3(devattr);

	val = FUNC0(client, reg->page, reg->attr->reg);
	if (val < 0)
		return val;

	return FUNC1(buf, PAGE_SIZE, "%d\n", val);
}