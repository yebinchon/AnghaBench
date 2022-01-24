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
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  kone_command_firmware_version ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_device *usb_dev, int *result)
{
	int retval;
	uint16_t data;

	retval = FUNC0(usb_dev, kone_command_firmware_version,
			&data, 2);
	if (retval)
		return retval;

	*result = FUNC1(data);
	return 0;
}