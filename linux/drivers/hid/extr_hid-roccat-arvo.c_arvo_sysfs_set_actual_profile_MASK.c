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
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct arvo_device {unsigned long actual_profile; int /*<<< orphan*/  arvo_lock; } ;
struct arvo_actual_profile {unsigned long actual_profile; int /*<<< orphan*/  command; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARVO_COMMAND_ACTUAL_PROFILE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct arvo_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,struct arvo_actual_profile*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char const *buf, size_t size)
{
	struct arvo_device *arvo =
			FUNC1(FUNC0(dev->parent->parent));
	struct usb_device *usb_dev =
			FUNC2(FUNC7(dev->parent->parent));
	struct arvo_actual_profile temp_buf;
	unsigned long profile;
	int retval;

	retval = FUNC3(buf, 10, &profile);
	if (retval)
		return retval;

	if (profile < 1 || profile > 5)
		return -EINVAL;

	temp_buf.command = ARVO_COMMAND_ACTUAL_PROFILE;
	temp_buf.actual_profile = profile;

	FUNC4(&arvo->arvo_lock);
	retval = FUNC6(usb_dev, ARVO_COMMAND_ACTUAL_PROFILE,
			&temp_buf, sizeof(struct arvo_actual_profile));
	if (!retval) {
		arvo->actual_profile = profile;
		retval = size;
	}
	FUNC5(&arvo->arvo_lock);
	return retval;
}