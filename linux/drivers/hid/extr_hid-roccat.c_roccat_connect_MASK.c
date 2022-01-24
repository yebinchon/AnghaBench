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
struct roccat_device {unsigned int minor; int exist; int report_size; scalar_t__ cbuf_end; struct hid_device* hid; int /*<<< orphan*/  cbuf_lock; int /*<<< orphan*/  readers_lock; int /*<<< orphan*/  readers; int /*<<< orphan*/  wait; int /*<<< orphan*/  dev; } ;
struct hid_device {TYPE_1__* driver; int /*<<< orphan*/  dev; } ;
struct class {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int ROCCAT_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC4 (struct class*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct roccat_device** devices ; 
 int /*<<< orphan*/  devices_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct roccat_device*) ; 
 struct roccat_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  roccat_major ; 

int FUNC11(struct class *klass, struct hid_device *hid, int report_size)
{
	unsigned int minor;
	struct roccat_device *device;
	int temp;

	device = FUNC7(sizeof(struct roccat_device), GFP_KERNEL);
	if (!device)
		return -ENOMEM;

	FUNC9(&devices_lock);

	for (minor = 0; minor < ROCCAT_MAX_DEVICES; ++minor) {
		if (devices[minor])
			continue;
		break;
	}

	if (minor < ROCCAT_MAX_DEVICES) {
		devices[minor] = device;
	} else {
		FUNC10(&devices_lock);
		FUNC6(device);
		return -EINVAL;
	}

	device->dev = FUNC4(klass, &hid->dev,
			FUNC2(roccat_major, minor), NULL,
			"%s%s%d", "roccat", hid->driver->name, minor);

	if (FUNC1(device->dev)) {
		devices[minor] = NULL;
		FUNC10(&devices_lock);
		temp = FUNC3(device->dev);
		FUNC6(device);
		return temp;
	}

	FUNC10(&devices_lock);

	FUNC5(&device->wait);
	FUNC0(&device->readers);
	FUNC8(&device->readers_lock);
	FUNC8(&device->cbuf_lock);
	device->minor = minor;
	device->hid = hid;
	device->exist = 1;
	device->cbuf_end = 0;
	device->report_size = report_size;

	return minor;
}