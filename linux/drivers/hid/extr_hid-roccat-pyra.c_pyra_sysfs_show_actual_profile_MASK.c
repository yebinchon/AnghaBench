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
struct pyra_settings {int startup_profile; } ;
struct pyra_device {int /*<<< orphan*/  pyra_lock; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PYRA_COMMAND_SETTINGS ; 
 int /*<<< orphan*/  PYRA_SIZE_SETTINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pyra_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ,struct pyra_settings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct pyra_device *pyra =
			FUNC1(FUNC0(dev->parent->parent));
	struct usb_device *usb_dev = FUNC2(FUNC7(dev));
	struct pyra_settings settings;

	FUNC3(&pyra->pyra_lock);
	FUNC5(usb_dev, PYRA_COMMAND_SETTINGS,
			&settings, PYRA_SIZE_SETTINGS);
	FUNC4(&pyra->pyra_lock);

	return FUNC6(buf, PAGE_SIZE, "%d\n", settings.startup_profile);
}