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
struct dme1737_data {int /*<<< orphan*/  update_lock; void** in_max; int /*<<< orphan*/ * in_nominal; void** in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (long,int /*<<< orphan*/ ) ; 
#define  SYS_IN_MAX 129 
#define  SYS_IN_MIN 128 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct dme1737_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dme1737_data*,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct dme1737_data *data = FUNC4(dev);
	struct sensor_device_attribute_2
		*sensor_attr_2 = FUNC9(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	long val;
	int err;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
	switch (fn) {
	case SYS_IN_MIN:
		data->in_min[ix] = FUNC2(val, data->in_nominal[ix]);
		FUNC5(data, FUNC1(ix),
			      data->in_min[ix]);
		break;
	case SYS_IN_MAX:
		data->in_max[ix] = FUNC2(val, data->in_nominal[ix]);
		FUNC5(data, FUNC0(ix),
			      data->in_max[ix]);
		break;
	default:
		FUNC3(dev, "Unknown function %d.\n", fn);
	}
	FUNC8(&data->update_lock);

	return count;
}