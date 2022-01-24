#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct TYPE_5__ {unsigned long startup_profile; } ;
struct kone_device {int /*<<< orphan*/  kone_lock; TYPE_2__ settings; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef  int ssize_t ;
struct TYPE_4__ {struct device* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct kone_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kone_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kone_device*,unsigned long) ; 
 int FUNC5 (struct usb_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
		struct device_attribute *attr, char const *buf, size_t size)
{
	struct kone_device *kone;
	struct usb_device *usb_dev;
	int retval;
	unsigned long new_startup_profile;

	dev = dev->parent->parent;
	kone = FUNC1(FUNC0(dev));
	usb_dev = FUNC2(FUNC10(dev));

	retval = FUNC7(buf, 10, &new_startup_profile);
	if (retval)
		return retval;

	if (new_startup_profile  < 1 || new_startup_profile > 5)
		return -EINVAL;

	FUNC8(&kone->kone_lock);

	kone->settings.startup_profile = new_startup_profile;
	FUNC6(&kone->settings);

	retval = FUNC5(usb_dev, &kone->settings);
	if (retval) {
		FUNC9(&kone->kone_lock);
		return retval;
	}

	/* changing the startup profile immediately activates this profile */
	FUNC3(kone, new_startup_profile);
	FUNC4(kone, new_startup_profile);

	FUNC9(&kone->kone_lock);
	return size;
}