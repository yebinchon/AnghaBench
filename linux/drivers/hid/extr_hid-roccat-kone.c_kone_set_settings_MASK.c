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
struct kone_settings {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  kone_command_settings ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,struct kone_settings const*,int) ; 

__attribute__((used)) static int FUNC2(struct usb_device *usb_dev,
		struct kone_settings const *settings)
{
	int retval;

	retval = FUNC1(usb_dev, kone_command_settings,
			settings, sizeof(struct kone_settings));
	if (retval)
		return retval;
	return FUNC0(usb_dev);
}