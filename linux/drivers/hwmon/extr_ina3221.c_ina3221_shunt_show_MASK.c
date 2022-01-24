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
struct sensor_device_attribute {unsigned int index; } ;
struct ina3221_input {int shunt_resistor; } ;
struct ina3221_data {struct ina3221_input* inputs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct ina3221_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute *sd_attr = FUNC2(attr);
	struct ina3221_data *ina = FUNC0(dev);
	unsigned int channel = sd_attr->index;
	struct ina3221_input *input = &ina->inputs[channel];

	return FUNC1(buf, PAGE_SIZE, "%d\n", input->shunt_resistor);
}