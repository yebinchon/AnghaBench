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
struct sensor_device_attribute_2 {int /*<<< orphan*/  index; } ;
struct nct6775_data {int* BEEP_BITS; unsigned long long beeps; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_BEEP; int /*<<< orphan*/  num_temp_beeps; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int TEMP_ALARM_BASE ; 
 struct nct6775_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct nct6775_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);
	struct nct6775_data *data = FUNC0(dev);
	int nr, bit, regindex;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err < 0)
		return err;
	if (val > 1)
		return -EINVAL;

	nr = FUNC1(data, sattr->index, data->num_temp_beeps);
	if (nr < 0)
		return nr;

	bit = data->BEEP_BITS[nr + TEMP_ALARM_BASE];
	regindex = bit >> 3;

	FUNC3(&data->update_lock);
	if (val)
		data->beeps |= (1ULL << bit);
	else
		data->beeps &= ~(1ULL << bit);
	FUNC5(data, data->REG_BEEP[regindex],
			    (data->beeps >> (regindex << 3)) & 0xff);
	FUNC4(&data->update_lock);

	return count;
}