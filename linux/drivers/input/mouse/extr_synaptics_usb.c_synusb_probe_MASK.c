#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; TYPE_7__* cur_altsetting; int /*<<< orphan*/  num_altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {char* product; int /*<<< orphan*/  dev; TYPE_2__ descriptor; scalar_t__ manufacturer; } ;
struct synusb {int flags; TYPE_4__* urb; int /*<<< orphan*/  data; struct input_dev* input; struct usb_interface* intf; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  pm_mutex; struct usb_device* udev; } ;
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int (* open ) (struct input_dev*) ;int /*<<< orphan*/  keybit; int /*<<< orphan*/  propbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  (* close ) (struct input_dev*) ;TYPE_3__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {unsigned int bInterfaceNumber; } ;
struct TYPE_12__ {TYPE_1__ desc; } ;
struct TYPE_11__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_POINTING_STICK ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int SYNUSB_COMBO ; 
 int SYNUSB_IO_ALWAYS ; 
 int /*<<< orphan*/  SYNUSB_RECV_SIZE ; 
 int SYNUSB_STICK ; 
 int SYNUSB_TOUCHPAD ; 
 int SYNUSB_TOUCHSCREEN ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int XMAX_NOMINAL ; 
 int /*<<< orphan*/  XMIN_NOMINAL ; 
 int YMAX_NOMINAL ; 
 int /*<<< orphan*/  YMIN_NOMINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,struct synusb*) ; 
 struct usb_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct synusb*) ; 
 struct synusb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*) ; 
 struct usb_endpoint_descriptor* FUNC18 (TYPE_7__*) ; 
 int /*<<< orphan*/  synusb_irq ; 
 int FUNC19 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct synusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct usb_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_interface*,struct synusb*) ; 
 int /*<<< orphan*/  FUNC29 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC7(intf);
	struct usb_endpoint_descriptor *ep;
	struct synusb *synusb;
	struct input_dev *input_dev;
	unsigned int intf_num = intf->cur_altsetting->desc.bInterfaceNumber;
	unsigned int altsetting = FUNC11(intf->num_altsetting, 1U);
	int error;

	error = FUNC27(udev, intf_num, altsetting);
	if (error) {
		FUNC1(&udev->dev,
			"Can not set alternate setting to %i, error: %i",
			altsetting, error);
		return error;
	}

	ep = FUNC18(intf->cur_altsetting);
	if (!ep)
		return -ENODEV;

	synusb = FUNC9(sizeof(*synusb), GFP_KERNEL);
	input_dev = FUNC2();
	if (!synusb || !input_dev) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	synusb->udev = udev;
	synusb->intf = intf;
	synusb->input = input_dev;
	FUNC12(&synusb->pm_mutex);

	synusb->flags = id->driver_info;
	if (synusb->flags & SYNUSB_COMBO) {
		/*
		 * This is a combo device, we need to set proper
		 * capability, depending on the interface.
		 */
		synusb->flags |= intf_num == 1 ?
					SYNUSB_STICK : SYNUSB_TOUCHPAD;
	}

	synusb->urb = FUNC21(0, GFP_KERNEL);
	if (!synusb->urb) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	synusb->data = FUNC20(udev, SYNUSB_RECV_SIZE, GFP_KERNEL,
					  &synusb->urb->transfer_dma);
	if (!synusb->data) {
		error = -ENOMEM;
		goto err_free_urb;
	}

	FUNC22(synusb->urb, udev,
			 FUNC26(udev, ep->bEndpointAddress),
			 synusb->data, SYNUSB_RECV_SIZE,
			 synusb_irq, synusb,
			 ep->bInterval);
	synusb->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	if (udev->manufacturer)
		FUNC15(synusb->name, udev->manufacturer,
			sizeof(synusb->name));

	if (udev->product) {
		if (udev->manufacturer)
			FUNC14(synusb->name, " ", sizeof(synusb->name));
		FUNC14(synusb->name, udev->product, sizeof(synusb->name));
	}

	if (!FUNC16(synusb->name))
		FUNC13(synusb->name, sizeof(synusb->name),
			 "USB Synaptics Device %04x:%04x",
			 FUNC10(udev->descriptor.idVendor),
			 FUNC10(udev->descriptor.idProduct));

	if (synusb->flags & SYNUSB_STICK)
		FUNC14(synusb->name, " (Stick)", sizeof(synusb->name));

	FUNC25(udev, synusb->phys, sizeof(synusb->phys));
	FUNC14(synusb->phys, "/input0", sizeof(synusb->phys));

	input_dev->name = synusb->name;
	input_dev->phys = synusb->phys;
	FUNC29(udev, &input_dev->id);
	input_dev->dev.parent = &synusb->intf->dev;

	if (!(synusb->flags & SYNUSB_IO_ALWAYS)) {
		input_dev->open = synusb_open;
		input_dev->close = synusb_close;
	}

	FUNC6(input_dev, synusb);

	FUNC0(EV_ABS, input_dev->evbit);
	FUNC0(EV_KEY, input_dev->evbit);

	if (synusb->flags & SYNUSB_STICK) {
		FUNC0(EV_REL, input_dev->evbit);
		FUNC0(REL_X, input_dev->relbit);
		FUNC0(REL_Y, input_dev->relbit);
		FUNC0(INPUT_PROP_POINTING_STICK, input_dev->propbit);
		FUNC5(input_dev, ABS_PRESSURE, 0, 127, 0, 0);
	} else {
		FUNC5(input_dev, ABS_X,
				     XMIN_NOMINAL, XMAX_NOMINAL, 0, 0);
		FUNC5(input_dev, ABS_Y,
				     YMIN_NOMINAL, YMAX_NOMINAL, 0, 0);
		FUNC5(input_dev, ABS_PRESSURE, 0, 255, 0, 0);
		FUNC5(input_dev, ABS_TOOL_WIDTH, 0, 15, 0, 0);
		FUNC0(BTN_TOUCH, input_dev->keybit);
		FUNC0(BTN_TOOL_FINGER, input_dev->keybit);
		FUNC0(BTN_TOOL_DOUBLETAP, input_dev->keybit);
		FUNC0(BTN_TOOL_TRIPLETAP, input_dev->keybit);
	}

	if (synusb->flags & SYNUSB_TOUCHSCREEN)
		FUNC0(INPUT_PROP_DIRECT, input_dev->propbit);
	else
		FUNC0(INPUT_PROP_POINTER, input_dev->propbit);

	FUNC0(BTN_LEFT, input_dev->keybit);
	FUNC0(BTN_RIGHT, input_dev->keybit);
	FUNC0(BTN_MIDDLE, input_dev->keybit);

	FUNC28(intf, synusb);

	if (synusb->flags & SYNUSB_IO_ALWAYS) {
		error = FUNC19(input_dev);
		if (error)
			goto err_free_dma;
	}

	error = FUNC4(input_dev);
	if (error) {
		FUNC1(&udev->dev,
			"Failed to register input device, error %d\n",
			error);
		goto err_stop_io;
	}

	return 0;

err_stop_io:
	if (synusb->flags & SYNUSB_IO_ALWAYS)
		FUNC17(synusb->input);
err_free_dma:
	FUNC23(udev, SYNUSB_RECV_SIZE, synusb->data,
			  synusb->urb->transfer_dma);
err_free_urb:
	FUNC24(synusb->urb);
err_free_mem:
	FUNC3(input_dev);
	FUNC8(synusb);
	FUNC28(intf, NULL);

	return error;
}