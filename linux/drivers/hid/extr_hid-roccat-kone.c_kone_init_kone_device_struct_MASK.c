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
typedef  int uint ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  startup_profile; } ;
struct kone_device {TYPE_1__ settings; int /*<<< orphan*/  firmware_version; int /*<<< orphan*/ * profiles; int /*<<< orphan*/  kone_lock; } ;

/* Variables and functions */
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct usb_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kone_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct usb_device *usb_dev,
		struct kone_device *kone)
{
	uint i;
	int retval;

	FUNC4(&kone->kone_lock);

	for (i = 0; i < 5; ++i) {
		retval = FUNC1(usb_dev, &kone->profiles[i], i + 1);
		if (retval)
			return retval;
	}

	retval = FUNC2(usb_dev, &kone->settings);
	if (retval)
		return retval;

	retval = FUNC0(usb_dev, &kone->firmware_version);
	if (retval)
		return retval;

	FUNC3(kone, kone->settings.startup_profile);

	return 0;
}