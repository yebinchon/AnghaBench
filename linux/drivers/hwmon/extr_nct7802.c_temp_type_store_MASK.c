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
struct sensor_device_attribute {int index; } ;
struct nct7802_data {int /*<<< orphan*/  regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_MODE ; 
 struct nct7802_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{
	struct nct7802_data *data = FUNC0(dev);
	struct sensor_device_attribute *sattr = FUNC3(attr);
	unsigned int type;
	int err;

	err = FUNC1(buf, 0, &type);
	if (err < 0)
		return err;
	if (sattr->index == 2 && type != 4) /* RD3 */
		return -EINVAL;
	if (type < 3 || type > 4)
		return -EINVAL;
	err = FUNC2(data->regmap, REG_MODE,
			3 << 2 * sattr->index, (type - 2) << 2 * sattr->index);
	return err ? : count;
}