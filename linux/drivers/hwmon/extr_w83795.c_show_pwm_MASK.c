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
struct w83795_data {unsigned int** pwm; int /*<<< orphan*/  clkin; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  PWM_FREQ 129 
 int PWM_OUTPUT ; 
#define  PWM_STOP_TIME 128 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 
 struct w83795_data* FUNC4 (struct device*) ; 
 struct w83795_data* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct w83795_data *data;
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC3(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	unsigned int val;

	data = nr == PWM_OUTPUT ? FUNC4(dev)
				: FUNC5(dev);

	switch (nr) {
	case PWM_STOP_TIME:
		val = FUNC2(data->pwm[index][nr]);
		break;
	case PWM_FREQ:
		val = FUNC0(data->pwm[index][nr], data->clkin);
		break;
	default:
		val = data->pwm[index][nr];
		break;
	}

	return FUNC1(buf, "%u\n", val);
}