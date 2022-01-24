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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct nct6775_data {int* BEEP_BITS; int beeps; int /*<<< orphan*/  num_temp_beeps; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int TEMP_ALARM_BASE ; 
 int FUNC0 (struct nct6775_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nct6775_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute *sattr = FUNC3(attr);
	struct nct6775_data *data = FUNC1(dev);
	unsigned int beep = 0;
	int nr;

	/*
	 * For temperatures, there is no fixed mapping from registers to beep
	 * enable bits. Beep enable bits are determined by the temperature
	 * source mapping.
	 */
	nr = FUNC0(data, sattr->index, data->num_temp_beeps);
	if (nr >= 0) {
		int bit = data->BEEP_BITS[nr + TEMP_ALARM_BASE];

		beep = (data->beeps >> bit) & 0x01;
	}
	return FUNC2(buf, "%u\n", beep);
}