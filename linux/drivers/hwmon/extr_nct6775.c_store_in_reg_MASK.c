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
struct sensor_device_attribute_2 {int index; int nr; } ;
struct nct6775_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** in; int /*<<< orphan*/ ** REG_IN_MINMAX; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct nct6775_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nct6775_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr, const char *buf,
	     size_t count)
{
	struct nct6775_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);
	int index = sattr->index;
	int nr = sattr->nr;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err < 0)
		return err;
	FUNC3(&data->update_lock);
	data->in[nr][index] = FUNC1(val, nr);
	FUNC5(data, data->REG_IN_MINMAX[index - 1][nr],
			    data->in[nr][index]);
	FUNC4(&data->update_lock);
	return count;
}