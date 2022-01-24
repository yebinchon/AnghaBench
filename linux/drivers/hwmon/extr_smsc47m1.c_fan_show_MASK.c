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
struct smsc47m1_data {int* pwm; int /*<<< orphan*/ * fan_preload; int /*<<< orphan*/ * fan_div; int /*<<< orphan*/ * fan; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smsc47m1_data* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *devattr,
			char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct smsc47m1_data *data = FUNC2(dev, 0);
	int nr = attr->index;
	/*
	 * This chip (stupidly) stops monitoring fan speed if PWM is
	 * enabled and duty cycle is 0%. This is fine if the monitoring
	 * and control concern the same fan, but troublesome if they are
	 * not (which could as well happen).
	 */
	int rpm = (data->pwm[nr] & 0x7F) == 0x00 ? 0 :
		  FUNC1(data->fan[nr],
			       FUNC0(data->fan_div[nr]),
			       data->fan_preload[nr]);
	return FUNC3(buf, "%d\n", rpm);
}