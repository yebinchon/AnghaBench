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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct nct7802_data {int /*<<< orphan*/  regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct nct7802_data* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (char*,char*,unsigned int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	struct nct7802_data *data = FUNC2(dev);
	struct sensor_device_attribute *sattr = FUNC5(attr);
	unsigned int reg, enabled;
	int ret;

	ret = FUNC3(data->regmap, FUNC0(sattr->index), &reg);
	if (ret < 0)
		return ret;
	enabled = reg >> FUNC1(sattr->index) & 1;
	return FUNC4(buf, "%u\n", enabled + 1);
}