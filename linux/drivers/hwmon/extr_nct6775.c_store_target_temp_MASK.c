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
struct nct6775_data {unsigned long* target_temp; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  target_temp_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nct6775_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nct6775_data*,int) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC2(dev);
	struct sensor_device_attribute *sattr = FUNC7(attr);
	int nr = sattr->index;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	val = FUNC1(FUNC0(val, 1000), 0,
			data->target_temp_mask);

	FUNC4(&data->update_lock);
	data->target_temp[nr] = val;
	FUNC6(data, nr);
	FUNC5(&data->update_lock);
	return count;
}