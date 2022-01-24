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
typedef  int /*<<< orphan*/  uint ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct usb_device*) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct usb_device *usb_dev,
		uint command, void const *buf, uint size)
{
	int retval;

	retval = FUNC2(usb_dev, command, buf, size);
	if (retval)
		return retval;

	FUNC0(100);

	return FUNC1(usb_dev);
}