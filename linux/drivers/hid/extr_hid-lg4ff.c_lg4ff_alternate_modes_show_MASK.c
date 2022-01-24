#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct TYPE_3__ {int alternate_modes; scalar_t__ product_id; scalar_t__ real_product_id; int /*<<< orphan*/  real_name; } ;
struct lg4ff_device_entry {TYPE_1__ wdata; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ product_id; int /*<<< orphan*/  name; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int LG4FF_MODE_MAX_IDX ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 struct lg_drv_data* FUNC2 (struct hid_device*) ; 
 TYPE_2__* lg4ff_alternate_modes ; 
 int FUNC3 (char*,int,char*,...) ; 
 struct hid_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct hid_device *hid = FUNC4(dev);
	struct lg4ff_device_entry *entry;
	struct lg_drv_data *drv_data;
	ssize_t count = 0;
	int i;

	drv_data = FUNC2(hid);
	if (!drv_data) {
		FUNC1(hid, "Private driver data not found!\n");
		return 0;
	}

	entry = drv_data->device_props;
	if (!entry) {
		FUNC1(hid, "Device properties not found!\n");
		return 0;
	}

	if (!entry->wdata.real_name) {
		FUNC1(hid, "NULL pointer to string\n");
		return 0;
	}

	for (i = 0; i < LG4FF_MODE_MAX_IDX; i++) {
		if (entry->wdata.alternate_modes & FUNC0(i)) {
			/* Print tag and full name */
			count += FUNC3(buf + count, PAGE_SIZE - count, "%s: %s",
					   lg4ff_alternate_modes[i].tag,
					   !lg4ff_alternate_modes[i].product_id ? entry->wdata.real_name : lg4ff_alternate_modes[i].name);
			if (count >= PAGE_SIZE - 1)
				return count;

			/* Mark the currently active mode with an asterisk */
			if (lg4ff_alternate_modes[i].product_id == entry->wdata.product_id ||
			    (lg4ff_alternate_modes[i].product_id == 0 && entry->wdata.product_id == entry->wdata.real_product_id))
				count += FUNC3(buf + count, PAGE_SIZE - count, " *\n");
			else
				count += FUNC3(buf + count, PAGE_SIZE - count, "\n");

			if (count >= PAGE_SIZE - 1)
				return count;
		}
	}

	return count;
}