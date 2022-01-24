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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_device {int dummy; } ;
struct pyra_settings {scalar_t__ startup_profile; } ;
struct pyra_roccat_report {scalar_t__ value; scalar_t__ key; int /*<<< orphan*/  type; } ;
struct pyra_device {int /*<<< orphan*/  pyra_lock; int /*<<< orphan*/  chrdev_minor; int /*<<< orphan*/  profile_settings; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PYRA_MOUSE_EVENT_BUTTON_TYPE_PROFILE_2 ; 
 size_t PYRA_SIZE_SETTINGS ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct pyra_device* FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pyra_device*,scalar_t__) ; 
 int FUNC8 (struct usb_device*,struct pyra_settings const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct file *fp,
		struct kobject *kobj, struct bin_attribute *attr, char *buf,
		loff_t off, size_t count)
{
	struct device *dev = FUNC4(kobj)->parent->parent;
	struct pyra_device *pyra = FUNC2(FUNC1(dev));
	struct usb_device *usb_dev = FUNC3(FUNC10(dev));
	int retval = 0;
	struct pyra_roccat_report roccat_report;
	struct pyra_settings const *settings;

	if (off != 0 || count != PYRA_SIZE_SETTINGS)
		return -EINVAL;

	settings = (struct pyra_settings const *)buf;
	if (settings->startup_profile >= FUNC0(pyra->profile_settings))
		return -EINVAL;

	FUNC5(&pyra->pyra_lock);

	retval = FUNC8(usb_dev, settings);
	if (retval) {
		FUNC6(&pyra->pyra_lock);
		return retval;
	}

	FUNC7(pyra, settings->startup_profile);

	roccat_report.type = PYRA_MOUSE_EVENT_BUTTON_TYPE_PROFILE_2;
	roccat_report.value = settings->startup_profile + 1;
	roccat_report.key = 0;
	FUNC9(pyra->chrdev_minor,
			(uint8_t const *)&roccat_report);

	FUNC6(&pyra->pyra_lock);
	return PYRA_SIZE_SETTINGS;
}