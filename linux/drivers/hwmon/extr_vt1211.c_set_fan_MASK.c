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
struct vt1211_data {int* fan_div; int fan_ctl; int* fan_min; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (unsigned long,int) ; 
#define  SHOW_SET_FAN_DIV 129 
#define  SHOW_SET_FAN_MIN 128 
 int /*<<< orphan*/  VT1211_REG_FAN_DIV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct vt1211_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned long) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 
 int FUNC9 (struct vt1211_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vt1211_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct vt1211_data *data = FUNC3(dev);
	struct sensor_device_attribute_2 *sensor_attr_2 =
						FUNC8(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	int reg;
	unsigned long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	FUNC6(&data->update_lock);

	/* sync the data cache */
	reg = FUNC9(data, VT1211_REG_FAN_DIV);
	data->fan_div[0] = (reg >> 4) & 3;
	data->fan_div[1] = (reg >> 6) & 3;
	data->fan_ctl = reg & 0xf;

	switch (fn) {
	case SHOW_SET_FAN_MIN:
		data->fan_min[ix] = FUNC0(val, data->fan_div[ix]);
		FUNC10(data, FUNC1(ix),
			      data->fan_min[ix]);
		break;
	case SHOW_SET_FAN_DIV:
		switch (val) {
		case 1:
			data->fan_div[ix] = 0;
			break;
		case 2:
			data->fan_div[ix] = 1;
			break;
		case 4:
			data->fan_div[ix] = 2;
			break;
		case 8:
			data->fan_div[ix] = 3;
			break;
		default:
			count = -EINVAL;
			FUNC4(dev,
				 "fan div value %ld not supported. Choose one of 1, 2, 4, or 8.\n",
				 val);
			goto EXIT;
		}
		FUNC10(data, VT1211_REG_FAN_DIV,
			      ((data->fan_div[1] << 6) |
			       (data->fan_div[0] << 4) |
				data->fan_ctl));
		break;
	default:
		FUNC2(dev, "Unknown attr fetch (%d)\n", fn);
	}

EXIT:
	FUNC7(&data->update_lock);
	return count;
}