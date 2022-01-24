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
struct hidraw {int minor; int exist; struct hid_device* hid; int /*<<< orphan*/  list; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  dev; } ;
struct hid_device {struct hidraw* hidraw; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HIDRAW_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  hidraw_class ; 
 int /*<<< orphan*/  hidraw_major ; 
 struct hidraw** hidraw_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hidraw*) ; 
 struct hidraw* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minors_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct hid_device *hid)
{
	int minor, result;
	struct hidraw *dev;

	/* we accept any HID device, all applications */

	dev = FUNC7(sizeof(struct hidraw), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	result = -EINVAL;

	FUNC8(&minors_lock);

	for (minor = 0; minor < HIDRAW_MAX_DEVICES; minor++) {
		if (hidraw_table[minor])
			continue;
		hidraw_table[minor] = dev;
		result = 0;
		break;
	}

	if (result) {
		FUNC9(&minors_lock);
		FUNC6(dev);
		goto out;
	}

	dev->dev = FUNC4(hidraw_class, &hid->dev, FUNC2(hidraw_major, minor),
				 NULL, "%s%d", "hidraw", minor);

	if (FUNC1(dev->dev)) {
		hidraw_table[minor] = NULL;
		FUNC9(&minors_lock);
		result = FUNC3(dev->dev);
		FUNC6(dev);
		goto out;
	}

	FUNC5(&dev->wait);
	FUNC10(&dev->list_lock);
	FUNC0(&dev->list);

	dev->hid = hid;
	dev->minor = minor;

	dev->exist = 1;
	hid->hidraw = dev;

	FUNC9(&minors_lock);
out:
	return result;

}