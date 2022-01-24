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
struct kovaplus_profile_buttons {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOVAPLUS_COMMAND_PROFILE_BUTTONS ; 
 int /*<<< orphan*/  KOVAPLUS_CONTROL_REQUEST_PROFILE_BUTTONS ; 
 int /*<<< orphan*/  KOVAPLUS_SIZE_PROFILE_BUTTONS ; 
 int FUNC0 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,struct kovaplus_profile_buttons*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_device *usb_dev,
		struct kovaplus_profile_buttons *buf, int number)
{
	int retval;

	retval = FUNC0(usb_dev, number,
			KOVAPLUS_CONTROL_REQUEST_PROFILE_BUTTONS);
	if (retval)
		return retval;

	return FUNC1(usb_dev, KOVAPLUS_COMMAND_PROFILE_BUTTONS,
			buf, KOVAPLUS_SIZE_PROFILE_BUTTONS);
}