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
struct kovaplus_info {int firmware_version; } ;
struct kovaplus_device {int /*<<< orphan*/  kovaplus_lock; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOVAPLUS_COMMAND_INFO ; 
 int /*<<< orphan*/  KOVAPLUS_SIZE_INFO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct kovaplus_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ,struct kovaplus_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct kovaplus_device *kovaplus;
	struct usb_device *usb_dev;
	struct kovaplus_info info;

	dev = dev->parent->parent;
	kovaplus = FUNC1(FUNC0(dev));
	usb_dev = FUNC2(FUNC7(dev));

	FUNC3(&kovaplus->kovaplus_lock);
	FUNC5(usb_dev, KOVAPLUS_COMMAND_INFO,
			&info, KOVAPLUS_SIZE_INFO);
	FUNC4(&kovaplus->kovaplus_lock);

	return FUNC6(buf, PAGE_SIZE, "%d\n", info.firmware_version);
}