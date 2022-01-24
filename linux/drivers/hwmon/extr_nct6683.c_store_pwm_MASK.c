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
struct sensor_device_attribute_2 {int index; } ;
struct nct6683_data {int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 unsigned long NCT6683_FAN_CFG_DONE ; 
 unsigned long NCT6683_FAN_CFG_REQ ; 
 int /*<<< orphan*/  NCT6683_REG_FAN_CFG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nct6683_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nct6683_data*,int /*<<< orphan*/ ,unsigned long) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr, const char *buf,
	  size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);
	struct nct6683_data *data = FUNC1(dev);
	int index = sattr->index;
	unsigned long val;

	if (FUNC2(buf, 10, &val) || val > 255)
		return -EINVAL;

	FUNC3(&data->update_lock);
	FUNC5(data, NCT6683_REG_FAN_CFG_CTRL, NCT6683_FAN_CFG_REQ);
	FUNC7(1000, 2000);
	FUNC5(data, FUNC0(index), val);
	FUNC5(data, NCT6683_REG_FAN_CFG_CTRL, NCT6683_FAN_CFG_DONE);
	FUNC4(&data->update_lock);

	return count;
}