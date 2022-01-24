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
struct vt1211_data {int /*<<< orphan*/  update_lock; void** in_max; void** in_min; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 void* FUNC0 (int,long) ; 
#define  SHOW_SET_IN_MAX 129 
#define  SHOW_SET_IN_MIN 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct vt1211_data* FUNC4 (struct device*) ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC9 (struct vt1211_data*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct vt1211_data *data = FUNC4(dev);
	struct sensor_device_attribute_2 *sensor_attr_2 =
						FUNC8(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	FUNC6(&data->update_lock);
	switch (fn) {
	case SHOW_SET_IN_MIN:
		data->in_min[ix] = FUNC0(ix, val);
		FUNC9(data, FUNC2(ix), data->in_min[ix]);
		break;
	case SHOW_SET_IN_MAX:
		data->in_max[ix] = FUNC0(ix, val);
		FUNC9(data, FUNC1(ix), data->in_max[ix]);
		break;
	default:
		FUNC3(dev, "Unknown attr fetch (%d)\n", fn);
	}
	FUNC7(&data->update_lock);

	return count;
}