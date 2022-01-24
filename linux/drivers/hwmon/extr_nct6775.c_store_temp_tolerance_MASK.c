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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct nct6775_data {unsigned long** temp_tolerance; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_CRITICAL_TEMP_TOLERANCE; int /*<<< orphan*/  tolerance_mask; } ;
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
 int /*<<< orphan*/  FUNC6 (struct nct6775_data*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct nct6775_data*,int) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sattr = FUNC8(attr);
	int nr = sattr->nr;
	int index = sattr->index;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	/* Limit tolerance as needed */
	val = FUNC1(FUNC0(val, 1000), 0, data->tolerance_mask);

	FUNC4(&data->update_lock);
	data->temp_tolerance[index][nr] = val;
	if (index)
		FUNC7(data, nr);
	else
		FUNC6(data,
				    data->REG_CRITICAL_TEMP_TOLERANCE[nr],
				    val);
	FUNC5(&data->update_lock);
	return count;
}