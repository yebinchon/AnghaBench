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
struct vt1211_data {int /*<<< orphan*/  update_lock; void** temp_hyst; void** temp_max; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  SHOW_SET_TEMP_MAX 129 
#define  SHOW_SET_TEMP_MAX_HYST 128 
 void* FUNC0 (int,long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct vt1211_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * regtemphyst ; 
 int /*<<< orphan*/ * regtempmax ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct vt1211_data*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct vt1211_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sensor_attr_2 =
						FUNC6(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	switch (fn) {
	case SHOW_SET_TEMP_MAX:
		data->temp_max[ix] = FUNC0(ix, val);
		FUNC7(data, regtempmax[ix],
			      data->temp_max[ix]);
		break;
	case SHOW_SET_TEMP_MAX_HYST:
		data->temp_hyst[ix] = FUNC0(ix, val);
		FUNC7(data, regtemphyst[ix],
			      data->temp_hyst[ix]);
		break;
	default:
		FUNC1(dev, "Unknown attr fetch (%d)\n", fn);
	}
	FUNC5(&data->update_lock);

	return count;
}