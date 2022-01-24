#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct kone_settings {int dummy; } ;
struct TYPE_6__ {int startup_profile; } ;
struct kone_device {int /*<<< orphan*/  kone_lock; TYPE_2__ settings; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_5__ {struct device* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct kone_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (struct kone_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kone_device*,int) ; 
 int FUNC6 (struct usb_device*,struct kone_settings const*) ; 
 int FUNC7 (char*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC12(struct file *fp, struct kobject *kobj,
		struct bin_attribute *attr, char *buf,
		loff_t off, size_t count) {
	struct device *dev = FUNC3(kobj)->parent->parent;
	struct kone_device *kone = FUNC1(FUNC0(dev));
	struct usb_device *usb_dev = FUNC2(FUNC11(dev));
	int retval = 0, difference, old_profile;

	/* I need to get my data in one piece */
	if (off != 0 || count != sizeof(struct kone_settings))
		return -EINVAL;

	FUNC9(&kone->kone_lock);
	difference = FUNC7(buf, &kone->settings, sizeof(struct kone_settings));
	if (difference) {
		retval = FUNC6(usb_dev,
				(struct kone_settings const *)buf);
		if (retval) {
			FUNC10(&kone->kone_lock);
			return retval;
		}

		old_profile = kone->settings.startup_profile;
		FUNC8(&kone->settings, buf, sizeof(struct kone_settings));

		FUNC4(kone, kone->settings.startup_profile);

		if (kone->settings.startup_profile != old_profile)
			FUNC5(kone, kone->settings.startup_profile);
	}
	FUNC10(&kone->kone_lock);

	return sizeof(struct kone_settings);
}