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
struct sensor_device_attribute_2 {size_t index; } ;
struct nct6775_data {int* BEEP_BITS; unsigned long long beeps; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_BEEP; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct nct6775_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr, const char *buf,
	   size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC5(attr);
	struct nct6775_data *data = FUNC0(dev);
	int nr = data->BEEP_BITS[sattr->index];
	int regindex = nr >> 3;
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err < 0)
		return err;
	if (val > 1)
		return -EINVAL;

	FUNC2(&data->update_lock);
	if (val)
		data->beeps |= (1ULL << nr);
	else
		data->beeps &= ~(1ULL << nr);
	FUNC4(data, data->REG_BEEP[regindex],
			    (data->beeps >> (regindex << 3)) & 0xff);
	FUNC3(&data->update_lock);
	return count;
}