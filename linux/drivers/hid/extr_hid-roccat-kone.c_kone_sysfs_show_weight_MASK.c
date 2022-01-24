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
struct kone_device {int /*<<< orphan*/  kone_lock; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct kone_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct kone_device *kone;
	struct usb_device *usb_dev;
	int weight = 0;
	int retval;

	dev = dev->parent->parent;
	kone = FUNC1(FUNC0(dev));
	usb_dev = FUNC2(FUNC7(dev));

	FUNC4(&kone->kone_lock);
	retval = FUNC3(usb_dev, &weight);
	FUNC5(&kone->kone_lock);

	if (retval)
		return retval;
	return FUNC6(buf, PAGE_SIZE, "%d\n", weight);
}