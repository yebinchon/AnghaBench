#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct occ_sensors {TYPE_1__ freq; } ;
struct occ {struct occ_sensors sensors; } ;
struct freq_sensor_2 {int /*<<< orphan*/  value; int /*<<< orphan*/  sensor_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 struct occ* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct occ*) ; 
 int FUNC4 (char*,scalar_t__,char*,int) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	int rc;
	u32 val = 0;
	struct freq_sensor_2 *freq;
	struct occ *occ = FUNC0(dev);
	struct occ_sensors *sensors = &occ->sensors;
	struct sensor_device_attribute_2 *sattr = FUNC5(attr);

	rc = FUNC3(occ);
	if (rc)
		return rc;

	freq = ((struct freq_sensor_2 *)sensors->freq.data) + sattr->index;

	switch (sattr->nr) {
	case 0:
		val = FUNC2(&freq->sensor_id);
		break;
	case 1:
		val = FUNC1(&freq->value);
		break;
	default:
		return -EINVAL;
	}

	return FUNC4(buf, PAGE_SIZE - 1, "%u\n", val);
}