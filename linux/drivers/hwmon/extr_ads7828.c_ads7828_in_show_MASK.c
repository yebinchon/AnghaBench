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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ads7828_data {unsigned int lsb_resol; int /*<<< orphan*/  regmap; int /*<<< orphan*/  cmd_byte; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ads7828_data* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(da);
	struct ads7828_data *data = FUNC2(dev);
	u8 cmd = FUNC1(data->cmd_byte, attr->index);
	unsigned int regval;
	int err;

	err = FUNC3(data->regmap, cmd, &regval);
	if (err < 0)
		return err;

	return FUNC4(buf, "%d\n",
		       FUNC0(regval * data->lsb_resol, 1000));
}