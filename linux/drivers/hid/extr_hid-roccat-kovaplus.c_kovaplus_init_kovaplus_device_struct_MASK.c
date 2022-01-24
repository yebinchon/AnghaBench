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
typedef  int uint ;
struct usb_device {int dummy; } ;
struct kovaplus_device {int /*<<< orphan*/ * profile_buttons; int /*<<< orphan*/ * profile_settings; int /*<<< orphan*/  kovaplus_lock; } ;

/* Variables and functions */
 int FUNC0 (struct usb_device*) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kovaplus_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct usb_device *usb_dev,
		struct kovaplus_device *kovaplus)
{
	int retval, i;
	static uint wait = 70; /* device will freeze with just 60 */

	FUNC5(&kovaplus->kovaplus_lock);

	for (i = 0; i < 5; ++i) {
		FUNC4(wait);
		retval = FUNC2(usb_dev,
				&kovaplus->profile_settings[i], i);
		if (retval)
			return retval;

		FUNC4(wait);
		retval = FUNC1(usb_dev,
				&kovaplus->profile_buttons[i], i);
		if (retval)
			return retval;
	}

	FUNC4(wait);
	retval = FUNC0(usb_dev);
	if (retval < 0)
		return retval;
	FUNC3(kovaplus, retval);

	return 0;
}