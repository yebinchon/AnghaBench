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
struct usbhid_device {int /*<<< orphan*/  ctrlbuf_dma; int /*<<< orphan*/  ctrlbuf; int /*<<< orphan*/  bufsize; int /*<<< orphan*/  cr; int /*<<< orphan*/  outbuf_dma; int /*<<< orphan*/  outbuf; int /*<<< orphan*/  inbuf_dma; int /*<<< orphan*/  inbuf; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_device *dev, struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;

	FUNC1(dev, usbhid->bufsize, usbhid->inbuf, usbhid->inbuf_dma);
	FUNC1(dev, usbhid->bufsize, usbhid->outbuf, usbhid->outbuf_dma);
	FUNC0(usbhid->cr);
	FUNC1(dev, usbhid->bufsize, usbhid->ctrlbuf, usbhid->ctrlbuf_dma);
}