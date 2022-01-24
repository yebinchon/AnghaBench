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
struct TYPE_2__ {unsigned long driver_data; void* product; void* vendor; int /*<<< orphan*/  group; void* bus; } ;
struct hid_dynid {int /*<<< orphan*/  list; TYPE_1__ id; } ;
struct hid_driver {int /*<<< orphan*/  driver; int /*<<< orphan*/  dyn_lock; int /*<<< orphan*/  dyn_list; } ;
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;
typedef  void* __u32 ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_GROUP_ANY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct hid_dynid* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char*,void**,void**,void**,unsigned long*) ; 
 struct hid_driver* FUNC6 (struct device_driver*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device_driver *drv, const char *buf,
		size_t count)
{
	struct hid_driver *hdrv = FUNC6(drv);
	struct hid_dynid *dynid;
	__u32 bus, vendor, product;
	unsigned long driver_data = 0;
	int ret;

	ret = FUNC5(buf, "%x %x %x %lx",
			&bus, &vendor, &product, &driver_data);
	if (ret < 3)
		return -EINVAL;

	dynid = FUNC1(sizeof(*dynid), GFP_KERNEL);
	if (!dynid)
		return -ENOMEM;

	dynid->id.bus = bus;
	dynid->id.group = HID_GROUP_ANY;
	dynid->id.vendor = vendor;
	dynid->id.product = product;
	dynid->id.driver_data = driver_data;

	FUNC3(&hdrv->dyn_lock);
	FUNC2(&dynid->list, &hdrv->dyn_list);
	FUNC4(&hdrv->dyn_lock);

	ret = FUNC0(&hdrv->driver);

	return ret ? : count;
}