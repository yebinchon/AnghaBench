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
struct usb_interface {int dummy; } ;
struct bcm5974 {int /*<<< orphan*/  pm_mutex; scalar_t__ opened; } ;

/* Variables and functions */
 int FUNC0 (struct bcm5974*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bcm5974* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *iface)
{
	struct bcm5974 *dev = FUNC3(iface);
	int error = 0;

	FUNC1(&dev->pm_mutex);

	if (dev->opened)
		error = FUNC0(dev);

	FUNC2(&dev->pm_mutex);

	return error;
}