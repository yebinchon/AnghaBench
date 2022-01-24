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
struct isku_device {int /*<<< orphan*/  isku_lock; } ;

/* Variables and functions */
 int FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct isku_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct usb_device *usb_dev,
		struct isku_device *isku)
{
	int retval;

	FUNC2(&isku->isku_lock);

	retval = FUNC0(usb_dev);
	if (retval < 0)
		return retval;
	FUNC1(isku, retval);

	return 0;
}