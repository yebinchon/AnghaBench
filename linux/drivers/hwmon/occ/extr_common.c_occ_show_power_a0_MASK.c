#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  update_tag; int /*<<< orphan*/  accumulator; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; int /*<<< orphan*/  update_tag; int /*<<< orphan*/  accumulator; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; int /*<<< orphan*/  update_tag; int /*<<< orphan*/  accumulator; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; int /*<<< orphan*/  update_tag; int /*<<< orphan*/  accumulator; } ;
struct power_sensor_a0 {TYPE_5__ vdn; int /*<<< orphan*/  sensor_id; TYPE_4__ vdd; TYPE_3__ proc; TYPE_2__ system; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct occ_sensors {TYPE_1__ power; } ;
struct occ {int powr_sample_time_us; struct occ_sensors sensors; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 struct occ* FUNC0 (struct device*) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct occ*) ; 
 int FUNC5 (char*,scalar_t__,char*,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	int rc;
	u64 val = 0;
	struct power_sensor_a0 *power;
	struct occ *occ = FUNC0(dev);
	struct occ_sensors *sensors = &occ->sensors;
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);

	rc = FUNC4(occ);
	if (rc)
		return rc;

	power = ((struct power_sensor_a0 *)sensors->power.data) + sattr->index;

	switch (sattr->nr) {
	case 0:
		return FUNC5(buf, PAGE_SIZE - 1, "%u_system\n",
				FUNC2(&power->sensor_id));
	case 1:
		val = FUNC3(&power->system.accumulator,
				       &power->system.update_tag);
		break;
	case 2:
		val = (u64)FUNC2(&power->system.update_tag) *
			   occ->powr_sample_time_us;
		break;
	case 3:
		val = FUNC1(&power->system.value) * 1000000ULL;
		break;
	case 4:
		return FUNC5(buf, PAGE_SIZE - 1, "%u_proc\n",
				FUNC2(&power->sensor_id));
	case 5:
		val = FUNC3(&power->proc.accumulator,
				       &power->proc.update_tag);
		break;
	case 6:
		val = (u64)FUNC2(&power->proc.update_tag) *
			   occ->powr_sample_time_us;
		break;
	case 7:
		val = FUNC1(&power->proc.value) * 1000000ULL;
		break;
	case 8:
		return FUNC5(buf, PAGE_SIZE - 1, "%u_vdd\n",
				FUNC2(&power->sensor_id));
	case 9:
		val = FUNC3(&power->vdd.accumulator,
				       &power->vdd.update_tag);
		break;
	case 10:
		val = (u64)FUNC2(&power->vdd.update_tag) *
			   occ->powr_sample_time_us;
		break;
	case 11:
		val = FUNC1(&power->vdd.value) * 1000000ULL;
		break;
	case 12:
		return FUNC5(buf, PAGE_SIZE - 1, "%u_vdn\n",
				FUNC2(&power->sensor_id));
	case 13:
		val = FUNC3(&power->vdn.accumulator,
				       &power->vdn.update_tag);
		break;
	case 14:
		val = (u64)FUNC2(&power->vdn.update_tag) *
			   occ->powr_sample_time_us;
		break;
	case 15:
		val = FUNC1(&power->vdn.value) * 1000000ULL;
		break;
	default:
		return -EINVAL;
	}

	return FUNC5(buf, PAGE_SIZE - 1, "%llu\n", val);
}