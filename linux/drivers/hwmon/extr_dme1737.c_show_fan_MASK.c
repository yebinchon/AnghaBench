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
struct dme1737_data {int alarms; int /*<<< orphan*/ * fan_opt; int /*<<< orphan*/ * fan_max; int /*<<< orphan*/ * fan_min; int /*<<< orphan*/ * fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int* DME1737_BIT_ALARM_FAN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  SYS_FAN_ALARM 132 
#define  SYS_FAN_INPUT 131 
#define  SYS_FAN_MAX 130 
#define  SYS_FAN_MIN 129 
#define  SYS_FAN_TYPE 128 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct dme1737_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	struct dme1737_data *data = FUNC5(dev);
	struct sensor_device_attribute_2
		*sensor_attr_2 = FUNC7(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	int res;

	switch (fn) {
	case SYS_FAN_INPUT:
		res = FUNC0(data->fan[ix],
				   ix < 4 ? 0 :
				   FUNC2(data->fan_opt[ix]));
		break;
	case SYS_FAN_MIN:
		res = FUNC0(data->fan_min[ix],
				   ix < 4 ? 0 :
				   FUNC2(data->fan_opt[ix]));
		break;
	case SYS_FAN_MAX:
		/* only valid for fan[5-6] */
		res = FUNC1(data->fan_max[ix - 4]);
		break;
	case SYS_FAN_ALARM:
		res = (data->alarms >> DME1737_BIT_ALARM_FAN[ix]) & 0x01;
		break;
	case SYS_FAN_TYPE:
		/* only valid for fan[1-4] */
		res = FUNC3(data->fan_opt[ix]);
		break;
	default:
		res = 0;
		FUNC4(dev, "Unknown function %d.\n", fn);
	}

	return FUNC6(buf, "%d\n", res);
}