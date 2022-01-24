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
struct usb_device {int dummy; } ;
struct kbtab {TYPE_1__* irq; int /*<<< orphan*/  intf; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct kbtab* FUNC0 (struct input_dev*) ; 
 struct usb_device* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
	struct kbtab *kbtab = FUNC0(dev);
	struct usb_device *udev = FUNC1(kbtab->intf);

	kbtab->irq->dev = udev;
	if (FUNC2(kbtab->irq, GFP_KERNEL))
		return -EIO;

	return 0;
}