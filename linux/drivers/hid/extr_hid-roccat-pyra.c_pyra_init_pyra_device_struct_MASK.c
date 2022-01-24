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
struct usb_device {int dummy; } ;
struct pyra_settings {int /*<<< orphan*/  startup_profile; } ;
struct pyra_device {int /*<<< orphan*/ * profile_settings; int /*<<< orphan*/  pyra_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pyra_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct usb_device*,struct pyra_settings*) ; 

__attribute__((used)) static int FUNC4(struct usb_device *usb_dev,
		struct pyra_device *pyra)
{
	struct pyra_settings settings;
	int retval, i;

	FUNC0(&pyra->pyra_lock);

	retval = FUNC3(usb_dev, &settings);
	if (retval)
		return retval;

	for (i = 0; i < 5; ++i) {
		retval = FUNC2(usb_dev,
				&pyra->profile_settings[i], i);
		if (retval)
			return retval;
	}

	FUNC1(pyra, settings.startup_profile);

	return 0;
}