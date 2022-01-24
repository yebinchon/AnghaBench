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
struct dme1737_data {int* fan_min; int* fan_opt; int* fan_max; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t EINVAL ; 
 int FUNC3 (long) ; 
 void* FUNC4 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (long,int) ; 
#define  SYS_FAN_MAX 130 
#define  SYS_FAN_MIN 129 
#define  SYS_FAN_TYPE 128 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 struct dme1737_data* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,long) ; 
 int FUNC10 (struct dme1737_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dme1737_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC15 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC16(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct dme1737_data *data = FUNC8(dev);
	struct sensor_device_attribute_2
		*sensor_attr_2 = FUNC15(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	long val;
	int err;

	err = FUNC12(buf, 10, &val);
	if (err)
		return err;

	FUNC13(&data->update_lock);
	switch (fn) {
	case SYS_FAN_MIN:
		if (ix < 4) {
			data->fan_min[ix] = FUNC4(val, 0);
		} else {
			/* Refresh the cache */
			data->fan_opt[ix] = FUNC10(data,
						FUNC2(ix));
			/* Modify the fan min value */
			data->fan_min[ix] = FUNC4(val,
					FUNC5(data->fan_opt[ix]));
		}
		FUNC11(data, FUNC1(ix),
			      data->fan_min[ix] & 0xff);
		FUNC11(data, FUNC1(ix) + 1,
			      data->fan_min[ix] >> 8);
		break;
	case SYS_FAN_MAX:
		/* Only valid for fan[5-6] */
		data->fan_max[ix - 4] = FUNC3(val);
		FUNC11(data, FUNC0(ix),
			      data->fan_max[ix - 4]);
		break;
	case SYS_FAN_TYPE:
		/* Only valid for fan[1-4] */
		if (!(val == 1 || val == 2 || val == 4)) {
			count = -EINVAL;
			FUNC9(dev,
				 "Fan type value %ld not supported. Choose one of 1, 2, or 4.\n",
				 val);
			goto exit;
		}
		data->fan_opt[ix] = FUNC6(val, FUNC10(data,
					FUNC2(ix)));
		FUNC11(data, FUNC2(ix),
			      data->fan_opt[ix]);
		break;
	default:
		FUNC7(dev, "Unknown function %d.\n", fn);
	}
exit:
	FUNC14(&data->update_lock);

	return count;
}