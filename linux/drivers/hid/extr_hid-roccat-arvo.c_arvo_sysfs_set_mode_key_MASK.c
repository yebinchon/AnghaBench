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
struct arvo_mode_key {unsigned long state; int /*<<< orphan*/  command; } ;
struct arvo_device {int /*<<< orphan*/  arvo_lock; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARVO_COMMAND_MODE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct arvo_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,struct arvo_mode_key*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char const *buf, size_t size)
{
	struct arvo_device *arvo =
			FUNC1(FUNC0(dev->parent->parent));
	struct usb_device *usb_dev =
			FUNC2(FUNC7(dev->parent->parent));
	struct arvo_mode_key temp_buf;
	unsigned long state;
	int retval;

	retval = FUNC3(buf, 10, &state);
	if (retval)
		return retval;

	temp_buf.command = ARVO_COMMAND_MODE_KEY;
	temp_buf.state = state;

	FUNC4(&arvo->arvo_lock);
	retval = FUNC6(usb_dev, ARVO_COMMAND_MODE_KEY,
			&temp_buf, sizeof(struct arvo_mode_key));
	FUNC5(&arvo->arvo_lock);
	if (retval)
		return retval;

	return size;
}