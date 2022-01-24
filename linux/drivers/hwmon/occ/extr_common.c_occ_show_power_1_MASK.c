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
typedef  unsigned long long u64 ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct power_sensor_1 {int /*<<< orphan*/  value; int /*<<< orphan*/  update_tag; int /*<<< orphan*/  accumulator; int /*<<< orphan*/  sensor_id; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct occ_sensors {TYPE_1__ power; } ;
struct occ {unsigned long long powr_sample_time_us; struct occ_sensors sensors; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 struct occ* FUNC0 (struct device*) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct occ*) ; 
 int FUNC4 (char*,scalar_t__,char*,unsigned long long) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	int rc;
	u64 val = 0;
	struct power_sensor_1 *power;
	struct occ *occ = FUNC0(dev);
	struct occ_sensors *sensors = &occ->sensors;
	struct sensor_device_attribute_2 *sattr = FUNC5(attr);

	rc = FUNC3(occ);
	if (rc)
		return rc;

	power = ((struct power_sensor_1 *)sensors->power.data) + sattr->index;

	switch (sattr->nr) {
	case 0:
		val = FUNC1(&power->sensor_id);
		break;
	case 1:
		val = FUNC2(&power->accumulator) /
			FUNC2(&power->update_tag);
		val *= 1000000ULL;
		break;
	case 2:
		val = (u64)FUNC2(&power->update_tag) *
			   occ->powr_sample_time_us;
		break;
	case 3:
		val = FUNC1(&power->value) * 1000000ULL;
		break;
	default:
		return -EINVAL;
	}

	return FUNC4(buf, PAGE_SIZE - 1, "%llu\n", val);
}