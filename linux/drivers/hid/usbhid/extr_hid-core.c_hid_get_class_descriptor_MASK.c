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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_device *dev, int ifnum,
		unsigned char type, void *buf, int size)
{
	int result, retries = 4;

	FUNC0(buf, 0, size);

	do {
		result = FUNC1(dev, FUNC2(dev, 0),
				USB_REQ_GET_DESCRIPTOR, USB_RECIP_INTERFACE | USB_DIR_IN,
				(type << 8), ifnum, buf, size, USB_CTRL_GET_TIMEOUT);
		retries--;
	} while (result < size && retries);
	return result;
}