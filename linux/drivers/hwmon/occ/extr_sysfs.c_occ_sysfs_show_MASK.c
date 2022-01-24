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
struct sensor_device_attribute {int index; } ;
struct occ_poll_response_header {int status; int ext_status; int occ_state; int /*<<< orphan*/  occs_present; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct occ {TYPE_1__ resp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int OCC_EXT_STAT_DVFS_OT ; 
 int OCC_EXT_STAT_DVFS_POWER ; 
 int OCC_EXT_STAT_MEM_THROTTLE ; 
 int OCC_EXT_STAT_QUICK_DROP ; 
 int OCC_STAT_ACTIVE ; 
 int OCC_STAT_MASTER ; 
 scalar_t__ PAGE_SIZE ; 
 struct occ* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct occ*) ; 
 int FUNC3 (char*,scalar_t__,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	int rc;
	int val = 0;
	struct occ *occ = FUNC0(dev);
	struct occ_poll_response_header *header;
	struct sensor_device_attribute *sattr = FUNC4(attr);

	rc = FUNC2(occ);
	if (rc)
		return rc;

	header = (struct occ_poll_response_header *)occ->resp.data;

	switch (sattr->index) {
	case 0:
		val = !!(header->status & OCC_STAT_MASTER);
		break;
	case 1:
		val = !!(header->status & OCC_STAT_ACTIVE);
		break;
	case 2:
		val = !!(header->ext_status & OCC_EXT_STAT_DVFS_OT);
		break;
	case 3:
		val = !!(header->ext_status & OCC_EXT_STAT_DVFS_POWER);
		break;
	case 4:
		val = !!(header->ext_status & OCC_EXT_STAT_MEM_THROTTLE);
		break;
	case 5:
		val = !!(header->ext_status & OCC_EXT_STAT_QUICK_DROP);
		break;
	case 6:
		val = header->occ_state;
		break;
	case 7:
		if (header->status & OCC_STAT_MASTER)
			val = FUNC1(header->occs_present);
		else
			val = 1;
		break;
	default:
		return -EINVAL;
	}

	return FUNC3(buf, PAGE_SIZE - 1, "%d\n", val);
}