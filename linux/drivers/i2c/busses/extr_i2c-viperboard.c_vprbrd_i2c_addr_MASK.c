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
struct vprbrd_i2c_addr_msg {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  VPRBRD_EP_OUT ; 
 int /*<<< orphan*/  VPRBRD_USB_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,struct vprbrd_i2c_addr_msg*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_device *usb_dev,
	struct vprbrd_i2c_addr_msg *amsg)
{
	int ret, bytes_actual;

	ret = FUNC1(usb_dev,
		FUNC2(usb_dev, VPRBRD_EP_OUT), amsg,
		sizeof(struct vprbrd_i2c_addr_msg), &bytes_actual,
		VPRBRD_USB_TIMEOUT_MS);

	if ((ret < 0) ||
			(sizeof(struct vprbrd_i2c_addr_msg) != bytes_actual)) {
		FUNC0(&usb_dev->dev, "failure transmitting usb\n");
		return -EREMOTEIO;
	}
	return 0;
}