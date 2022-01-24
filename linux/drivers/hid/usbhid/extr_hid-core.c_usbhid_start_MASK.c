#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {unsigned int bufsize; TYPE_4__* urbctrl; TYPE_4__* urbout; TYPE_4__* urbin; TYPE_7__* intf; int /*<<< orphan*/  iofl; int /*<<< orphan*/  ctrlbuf_dma; int /*<<< orphan*/  ctrlbuf; scalar_t__ cr; int /*<<< orphan*/  outbuf_dma; int /*<<< orphan*/  outbuf; int /*<<< orphan*/  inbuf_dma; int /*<<< orphan*/  inbuf; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_12__ {unsigned int bNumEndpoints; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_host_interface {TYPE_3__ desc; TYPE_1__* endpoint; } ;
struct usb_endpoint_descriptor {int bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device {scalar_t__ speed; int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; } ;
struct hid_device {int quirks; TYPE_9__ dev; TYPE_2__* collection; int /*<<< orphan*/  name; struct usbhid_device* driver_data; } ;
struct TYPE_14__ {int needs_remote_wakeup; } ;
struct TYPE_13__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_11__ {int usage; } ;
struct TYPE_10__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_DISCONNECTED ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
#define  HID_GD_JOYSTICK 130 
#define  HID_GD_KEYBOARD 129 
#define  HID_GD_MOUSE 128 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int /*<<< orphan*/  HID_IN_POLLING ; 
 unsigned int HID_MAX_BUFFER_SIZE ; 
 unsigned int HID_MIN_BUFFER_SIZE ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int HID_QUIRK_ALWAYS_POLL ; 
 int HID_QUIRK_FULLSPEED_INTERVAL ; 
 int /*<<< orphan*/  HID_STARTED ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 scalar_t__ USB_INTERFACE_PROTOCOL_KEYBOARD ; 
 scalar_t__ USB_INTERFACE_SUBCLASS_BOOT ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct usb_device*,struct hid_device*) ; 
 int /*<<< orphan*/  hid_ctrl ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,struct hid_device*) ; 
 int /*<<< orphan*/  hid_irq_in ; 
 int /*<<< orphan*/  hid_irq_out ; 
 int hid_jspoll_interval ; 
 int hid_kbpoll_interval ; 
 int hid_mousepoll_interval ; 
 int FUNC7 (struct hid_device*) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 scalar_t__ FUNC15 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct hid_device*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,struct usb_device*,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int FUNC20 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct hid_device*) ; 

__attribute__((used)) static int FUNC23(struct hid_device *hid)
{
	struct usb_interface *intf = FUNC11(hid->dev.parent);
	struct usb_host_interface *interface = intf->cur_altsetting;
	struct usb_device *dev = FUNC8(intf);
	struct usbhid_device *usbhid = hid->driver_data;
	unsigned int n, insize = 0;
	int ret;

	FUNC0(HID_DISCONNECTED, &usbhid->iofl);

	usbhid->bufsize = HID_MIN_BUFFER_SIZE;
	FUNC5(hid, HID_INPUT_REPORT, &usbhid->bufsize);
	FUNC5(hid, HID_OUTPUT_REPORT, &usbhid->bufsize);
	FUNC5(hid, HID_FEATURE_REPORT, &usbhid->bufsize);

	if (usbhid->bufsize > HID_MAX_BUFFER_SIZE)
		usbhid->bufsize = HID_MAX_BUFFER_SIZE;

	FUNC5(hid, HID_INPUT_REPORT, &insize);

	if (insize > HID_MAX_BUFFER_SIZE)
		insize = HID_MAX_BUFFER_SIZE;

	if (FUNC4(dev, hid)) {
		ret = -ENOMEM;
		goto fail;
	}

	for (n = 0; n < interface->desc.bNumEndpoints; n++) {
		struct usb_endpoint_descriptor *endpoint;
		int pipe;
		int interval;

		endpoint = &interface->endpoint[n].desc;
		if (!FUNC16(endpoint))
			continue;

		interval = endpoint->bInterval;

		/* Some vendors give fullspeed interval on highspeed devides */
		if (hid->quirks & HID_QUIRK_FULLSPEED_INTERVAL &&
		    dev->speed == USB_SPEED_HIGH) {
			interval = FUNC3(endpoint->bInterval*8);
			FUNC9("%s: Fixing fullspeed to highspeed interval: %d -> %d\n",
				hid->name, endpoint->bInterval, interval);
		}

		/* Change the polling interval of mice, joysticks
		 * and keyboards.
		 */
		switch (hid->collection->usage) {
		case HID_GD_MOUSE:
			if (hid_mousepoll_interval > 0)
				interval = hid_mousepoll_interval;
			break;
		case HID_GD_JOYSTICK:
			if (hid_jspoll_interval > 0)
				interval = hid_jspoll_interval;
			break;
		case HID_GD_KEYBOARD:
			if (hid_kbpoll_interval > 0)
				interval = hid_kbpoll_interval;
			break;
		}

		ret = -ENOMEM;
		if (FUNC15(endpoint)) {
			if (usbhid->urbin)
				continue;
			if (!(usbhid->urbin = FUNC12(0, GFP_KERNEL)))
				goto fail;
			pipe = FUNC20(dev, endpoint->bEndpointAddress);
			FUNC18(usbhid->urbin, dev, pipe, usbhid->inbuf, insize,
					 hid_irq_in, hid, interval);
			usbhid->urbin->transfer_dma = usbhid->inbuf_dma;
			usbhid->urbin->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		} else {
			if (usbhid->urbout)
				continue;
			if (!(usbhid->urbout = FUNC12(0, GFP_KERNEL)))
				goto fail;
			pipe = FUNC21(dev, endpoint->bEndpointAddress);
			FUNC18(usbhid->urbout, dev, pipe, usbhid->outbuf, 0,
					 hid_irq_out, hid, interval);
			usbhid->urbout->transfer_dma = usbhid->outbuf_dma;
			usbhid->urbout->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		}
	}

	usbhid->urbctrl = FUNC12(0, GFP_KERNEL);
	if (!usbhid->urbctrl) {
		ret = -ENOMEM;
		goto fail;
	}

	FUNC17(usbhid->urbctrl, dev, 0, (void *) usbhid->cr,
			     usbhid->ctrlbuf, 1, hid_ctrl, hid);
	usbhid->urbctrl->transfer_dma = usbhid->ctrlbuf_dma;
	usbhid->urbctrl->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	FUNC10(HID_STARTED, &usbhid->iofl);

	if (hid->quirks & HID_QUIRK_ALWAYS_POLL) {
		ret = FUNC13(usbhid->intf);
		if (ret)
			goto fail;
		FUNC10(HID_IN_POLLING, &usbhid->iofl);
		usbhid->intf->needs_remote_wakeup = 1;
		ret = FUNC7(hid);
		if (ret) {
			FUNC1(&hid->dev,
				"failed to start in urb: %d\n", ret);
		}
		FUNC14(usbhid->intf);
	}

	/* Some keyboards don't work until their LEDs have been set.
	 * Since BIOSes do set the LEDs, it must be safe for any device
	 * that supports the keyboard boot protocol.
	 * In addition, enable remote wakeup by default for all keyboard
	 * devices supporting the boot protocol.
	 */
	if (interface->desc.bInterfaceSubClass == USB_INTERFACE_SUBCLASS_BOOT &&
			interface->desc.bInterfaceProtocol ==
				USB_INTERFACE_PROTOCOL_KEYBOARD) {
		FUNC22(hid);
		FUNC2(&dev->dev, 1);
	}
	return 0;

fail:
	FUNC19(usbhid->urbin);
	FUNC19(usbhid->urbout);
	FUNC19(usbhid->urbctrl);
	usbhid->urbin = NULL;
	usbhid->urbout = NULL;
	usbhid->urbctrl = NULL;
	FUNC6(dev, hid);
	return ret;
}