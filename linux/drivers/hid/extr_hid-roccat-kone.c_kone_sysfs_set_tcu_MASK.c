#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {unsigned long tcu; int /*<<< orphan*/  startup_profile; } ;
struct kone_device {int /*<<< orphan*/  kone_lock; TYPE_2__ settings; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef  int ssize_t ;
struct TYPE_5__ {struct device* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct kone_device* FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct kone_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usb_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct usb_device*,int) ; 
 int FUNC9 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC14(struct device *dev,
		struct device_attribute *attr, char const *buf, size_t size)
{
	struct kone_device *kone;
	struct usb_device *usb_dev;
	int retval;
	unsigned long state;

	dev = dev->parent->parent;
	kone = FUNC2(FUNC1(dev));
	usb_dev = FUNC3(FUNC13(dev));

	retval = FUNC9(buf, 10, &state);
	if (retval)
		return retval;

	if (state != 0 && state != 1)
		return -EINVAL;

	FUNC10(&kone->kone_lock);

	if (state == 1) { /* state activate */
		retval = FUNC8(usb_dev, 1);
		if (retval)
			goto exit_unlock;
		retval = FUNC8(usb_dev, 2);
		if (retval)
			goto exit_unlock;
		FUNC12(5); /* tcu needs this time for calibration */
		retval = FUNC8(usb_dev, 3);
		if (retval)
			goto exit_unlock;
		retval = FUNC8(usb_dev, 0);
		if (retval)
			goto exit_unlock;
		retval = FUNC8(usb_dev, 4);
		if (retval)
			goto exit_unlock;
		/*
		 * Kone needs this time to settle things.
		 * Reading settings too early will result in invalid data.
		 * Roccat's driver waits 1 sec, maybe this time could be
		 * shortened.
		 */
		FUNC12(1);
	}

	/* calibration changes values in settings, so reread */
	retval = FUNC4(usb_dev, &kone->settings);
	if (retval)
		goto exit_no_settings;

	/* only write settings back if activation state is different */
	if (kone->settings.tcu != state) {
		kone->settings.tcu = state;
		FUNC7(&kone->settings);

		retval = FUNC6(usb_dev, &kone->settings);
		if (retval) {
			FUNC0(&usb_dev->dev, "couldn't set tcu state\n");
			/*
			 * try to reread valid settings into buffer overwriting
			 * first error code
			 */
			retval = FUNC4(usb_dev, &kone->settings);
			if (retval)
				goto exit_no_settings;
			goto exit_unlock;
		}
		/* calibration resets profile */
		FUNC5(kone, kone->settings.startup_profile);
	}

	retval = size;
exit_no_settings:
	FUNC0(&usb_dev->dev, "couldn't read settings\n");
exit_unlock:
	FUNC11(&kone->kone_lock);
	return retval;
}