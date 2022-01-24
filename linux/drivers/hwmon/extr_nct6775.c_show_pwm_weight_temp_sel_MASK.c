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
struct sensor_device_attribute {int index; } ;
struct nct6775_data {int /*<<< orphan*/ * pwm_weight_temp_sel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct nct6775_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nct6775_data*,char*,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct nct6775_data *data = FUNC0(dev);
	struct sensor_device_attribute *sattr = FUNC2(attr);
	int index = sattr->index;

	return FUNC1(data, buf,
					data->pwm_weight_temp_sel[index]);
}