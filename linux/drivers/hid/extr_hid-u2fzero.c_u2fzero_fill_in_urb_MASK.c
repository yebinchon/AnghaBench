#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {TYPE_1__* urbin; int /*<<< orphan*/  urbout; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterval; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct usb_device {int dummy; } ;
struct u2fzero_device {int /*<<< orphan*/  buf_in; int /*<<< orphan*/  urb; struct hid_device* hdev; } ;
struct hid_device {scalar_t__ bus; struct usbhid_device* driver_data; } ;
struct TYPE_3__ {int pipe; } ;

/* Variables and functions */
 scalar_t__ BUS_USB ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_REPORT_SIZE ; 
 int PIPE_INTERRUPT ; 
 struct usb_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  u2fzero_read_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct usb_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_host_endpoint* FUNC3 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC4(struct u2fzero_device *dev)
{
	struct hid_device *hdev = dev->hdev;
	struct usb_device *udev;
	struct usbhid_device *usbhid = hdev->driver_data;
	unsigned int pipe_in;
	struct usb_host_endpoint *ep;

	if (dev->hdev->bus != BUS_USB)
		return -EINVAL;

	udev = FUNC0(hdev);

	if (!usbhid->urbout || !usbhid->urbin)
		return -ENODEV;

	ep = FUNC3(udev, usbhid->urbin->pipe);
	if (!ep)
		return -ENODEV;

	dev->urb = FUNC1(0, GFP_KERNEL);
	if (!dev->urb)
		return -ENOMEM;

	pipe_in = (usbhid->urbin->pipe & ~(3 << 30)) | (PIPE_INTERRUPT << 30);

	FUNC2(dev->urb,
		udev,
		pipe_in,
		dev->buf_in,
		HID_REPORT_SIZE,
		u2fzero_read_callback,
		NULL,
		ep->desc.bInterval);

	return 0;
}