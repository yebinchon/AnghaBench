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
struct nct6775_data {scalar_t__* pwm_enable; int** pwm; int /*<<< orphan*/ * REG_PWM_READ; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ manual ; 
 int FUNC0 (struct nct6775_data*,int /*<<< orphan*/ ) ; 
 struct nct6775_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct nct6775_data *data = FUNC1(dev);
	struct sensor_device_attribute_2 *sattr = FUNC3(attr);
	int nr = sattr->nr;
	int index = sattr->index;
	int pwm;

	/*
	 * For automatic fan control modes, show current pwm readings.
	 * Otherwise, show the configured value.
	 */
	if (index == 0 && data->pwm_enable[nr] > manual)
		pwm = FUNC0(data, data->REG_PWM_READ[nr]);
	else
		pwm = data->pwm[index][nr];

	return FUNC2(buf, "%d\n", pwm);
}