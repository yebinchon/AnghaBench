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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct nct7802_data {int /*<<< orphan*/  regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct nct7802_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *devattr,
			 const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct nct7802_data *data = FUNC0(dev);
	int err;
	u8 val;

	err = FUNC1(buf, 0, &val);
	if (err < 0)
		return err;

	err = FUNC2(data->regmap, attr->index, val);
	return err ? : count;
}