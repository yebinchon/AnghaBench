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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct cm109_dev {int /*<<< orphan*/  pm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cm109_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cm109_dev* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct cm109_dev *dev = FUNC4(intf);

	FUNC1(&intf->dev, "cm109: usb_resume\n");

	FUNC2(&dev->pm_mutex);
	FUNC0(dev);
	FUNC3(&dev->pm_mutex);

	return 0;
}