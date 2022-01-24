#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_keyspan {int toggle; int /*<<< orphan*/  in_dma; int /*<<< orphan*/  in_buffer; TYPE_3__* irq_urb; struct input_dev* input; struct usb_device* udev; int /*<<< orphan*/ * keymap; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct usb_endpoint_descriptor* in_endpoint; struct usb_interface* interface; } ;
struct usb_interface {int /*<<< orphan*/  dev; int /*<<< orphan*/  cur_altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {char* product; TYPE_1__ descriptor; scalar_t__ manufacturer; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int keycodesize; int keycodemax; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/ * keycode; TYPE_2__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  RECV_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct usb_keyspan*) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  keyspan_close ; 
 struct usb_endpoint_descriptor* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyspan_irq_recv ; 
 int /*<<< orphan*/ * keyspan_key_table ; 
 int /*<<< orphan*/  keyspan_open ; 
 int FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_keyspan*) ; 
 struct usb_keyspan* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_keyspan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_interface*,struct usb_keyspan*) ; 
 int /*<<< orphan*/  FUNC27 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct usb_interface *interface, const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC8(interface);
	struct usb_endpoint_descriptor *endpoint;
	struct usb_keyspan *remote;
	struct input_dev *input_dev;
	int i, error;

	endpoint = FUNC9(interface->cur_altsetting);
	if (!endpoint)
		return -ENODEV;

	remote = FUNC12(sizeof(*remote), GFP_KERNEL);
	input_dev = FUNC3();
	if (!remote || !input_dev) {
		error = -ENOMEM;
		goto fail1;
	}

	remote->udev = udev;
	remote->input = input_dev;
	remote->interface = interface;
	remote->in_endpoint = endpoint;
	remote->toggle = -1;	/* Set to -1 so we will always not match the toggle from the first remote message. */

	remote->in_buffer = FUNC19(udev, RECV_SIZE, GFP_KERNEL, &remote->in_dma);
	if (!remote->in_buffer) {
		error = -ENOMEM;
		goto fail1;
	}

	remote->irq_urb = FUNC20(0, GFP_KERNEL);
	if (!remote->irq_urb) {
		error = -ENOMEM;
		goto fail2;
	}

	error = FUNC10(udev);
	if (error) {
		error = -ENODEV;
		goto fail3;
	}

	if (udev->manufacturer)
		FUNC17(remote->name, udev->manufacturer, sizeof(remote->name));

	if (udev->product) {
		if (udev->manufacturer)
			FUNC16(remote->name, " ", sizeof(remote->name));
		FUNC16(remote->name, udev->product, sizeof(remote->name));
	}

	if (!FUNC18(remote->name))
		FUNC15(remote->name, sizeof(remote->name),
			 "USB Keyspan Remote %04x:%04x",
			 FUNC13(udev->descriptor.idVendor),
			 FUNC13(udev->descriptor.idProduct));

	FUNC24(udev, remote->phys, sizeof(remote->phys));
	FUNC16(remote->phys, "/input0", sizeof(remote->phys));
	FUNC14(remote->keymap, keyspan_key_table, sizeof(remote->keymap));

	input_dev->name = remote->name;
	input_dev->phys = remote->phys;
	FUNC27(udev, &input_dev->id);
	input_dev->dev.parent = &interface->dev;
	input_dev->keycode = remote->keymap;
	input_dev->keycodesize = sizeof(unsigned short);
	input_dev->keycodemax = FUNC0(remote->keymap);

	FUNC6(input_dev, EV_MSC, MSC_SCAN);
	FUNC2(EV_KEY, input_dev->evbit);
	for (i = 0; i < FUNC0(keyspan_key_table); i++)
		FUNC2(keyspan_key_table[i], input_dev->keybit);
	FUNC1(KEY_RESERVED, input_dev->keybit);

	FUNC7(input_dev, remote);

	input_dev->open = keyspan_open;
	input_dev->close = keyspan_close;

	/*
	 * Initialize the URB to access the device.
	 * The urb gets sent to the device in keyspan_open()
	 */
	FUNC21(remote->irq_urb,
			 remote->udev,
			 FUNC25(remote->udev, endpoint->bEndpointAddress),
			 remote->in_buffer, RECV_SIZE, keyspan_irq_recv, remote,
			 endpoint->bInterval);
	remote->irq_urb->transfer_dma = remote->in_dma;
	remote->irq_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	/* we can register the device now, as it is ready */
	error = FUNC5(remote->input);
	if (error)
		goto fail3;

	/* save our data pointer in this interface device */
	FUNC26(interface, remote);

	return 0;

 fail3:	FUNC23(remote->irq_urb);
 fail2:	FUNC22(udev, RECV_SIZE, remote->in_buffer, remote->in_dma);
 fail1:	FUNC11(remote);
	FUNC4(input_dev);

	return error;
}