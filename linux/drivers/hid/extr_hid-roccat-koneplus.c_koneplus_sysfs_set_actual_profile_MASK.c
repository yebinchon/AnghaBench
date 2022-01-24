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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_device {int dummy; } ;
struct koneplus_roccat_report {unsigned long data1; unsigned long profile; scalar_t__ data2; int /*<<< orphan*/  type; } ;
struct koneplus_device {int /*<<< orphan*/  koneplus_lock; int /*<<< orphan*/  chrdev_minor; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct koneplus_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct koneplus_device*,unsigned long) ; 
 int FUNC4 (struct usb_device*,unsigned long) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, char const *buf, size_t size)
{
	struct koneplus_device *koneplus;
	struct usb_device *usb_dev;
	unsigned long profile;
	int retval;
	struct koneplus_roccat_report roccat_report;

	dev = dev->parent->parent;
	koneplus = FUNC1(FUNC0(dev));
	usb_dev = FUNC2(FUNC9(dev));

	retval = FUNC5(buf, 10, &profile);
	if (retval)
		return retval;

	if (profile > 4)
		return -EINVAL;

	FUNC6(&koneplus->koneplus_lock);

	retval = FUNC4(usb_dev, profile);
	if (retval) {
		FUNC7(&koneplus->koneplus_lock);
		return retval;
	}

	FUNC3(koneplus, profile);

	roccat_report.type = KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE;
	roccat_report.data1 = profile + 1;
	roccat_report.data2 = 0;
	roccat_report.profile = profile + 1;
	FUNC8(koneplus->chrdev_minor,
			(uint8_t const *)&roccat_report);

	FUNC7(&koneplus->koneplus_lock);

	return size;
}