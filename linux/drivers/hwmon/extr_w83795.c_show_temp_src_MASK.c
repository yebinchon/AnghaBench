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
typedef  int u8 ;
struct w83795_data {int* temp_src; } ;
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ TSS_MAP_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 struct sensor_device_attribute_2* FUNC1 (struct device_attribute*) ; 
 scalar_t__** tss_map ; 
 struct w83795_data* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC1(attr);
	struct w83795_data *data = FUNC2(dev);
	int index = sensor_attr->index;
	u8 tmp = data->temp_src[index / 2];

	if (index & 1)
		tmp >>= 4;	/* Pick high nibble */
	else
		tmp &= 0x0f;	/* Pick low nibble */

	/* Look-up the actual temperature channel number */
	if (tmp >= 4 || tss_map[tmp][index] == TSS_MAP_RESERVED)
		return -EINVAL;		/* Shouldn't happen */

	return FUNC0(buf, "%u\n", (unsigned int)tss_map[tmp][index] + 1);
}