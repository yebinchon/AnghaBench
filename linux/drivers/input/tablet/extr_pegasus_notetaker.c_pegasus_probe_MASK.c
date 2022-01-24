#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; TYPE_5__* cur_altsetting; TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {char* product; TYPE_6__ descriptor; scalar_t__ manufacturer; } ;
struct pegasus {int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; int /*<<< orphan*/  data_len; TYPE_8__* irq; struct input_dev* dev; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  init; struct usb_interface* intf; struct usb_device* usbdev; int /*<<< orphan*/  pm_mutex; } ;
struct TYPE_17__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int /*<<< orphan*/  propbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  absbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_7__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_18__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_11__ {int bInterfaceNumber; } ;
struct TYPE_15__ {TYPE_4__* endpoint; TYPE_1__ desc; } ;
struct TYPE_14__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_12__ {int bNumEndpoints; } ;
struct TYPE_13__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct pegasus*) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct pegasus*) ; 
 struct pegasus* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pegasus_close ; 
 int /*<<< orphan*/  pegasus_init ; 
 int /*<<< orphan*/  pegasus_irq ; 
 int /*<<< orphan*/  pegasus_open ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_8__*,struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pegasus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int FUNC25 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_interface*,struct pegasus*) ; 
 int /*<<< orphan*/  FUNC27 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC8(intf);
	struct usb_endpoint_descriptor *endpoint;
	struct pegasus *pegasus;
	struct input_dev *input_dev;
	int error;
	int pipe;

	/* We control interface 0 */
	if (intf->cur_altsetting->desc.bInterfaceNumber >= 1)
		return -ENODEV;

	/* Sanity check that the device has an endpoint */
	if (intf->altsetting[0].desc.bNumEndpoints < 1) {
		FUNC2(&intf->dev, "Invalid number of endpoints\n");
		return -EINVAL;
	}

	endpoint = &intf->cur_altsetting->endpoint[0].desc;

	pegasus = FUNC10(sizeof(*pegasus), GFP_KERNEL);
	input_dev = FUNC3();
	if (!pegasus || !input_dev) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	FUNC12(&pegasus->pm_mutex);

	pegasus->usbdev = dev;
	pegasus->dev = input_dev;
	pegasus->intf = intf;

	pipe = FUNC25(dev, endpoint->bEndpointAddress);
	pegasus->data_len = FUNC23(dev, pipe, FUNC24(pipe));

	pegasus->data = FUNC17(dev, pegasus->data_len, GFP_KERNEL,
					   &pegasus->data_dma);
	if (!pegasus->data) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	pegasus->irq = FUNC18(0, GFP_KERNEL);
	if (!pegasus->irq) {
		error = -ENOMEM;
		goto err_free_dma;
	}

	FUNC19(pegasus->irq, dev, pipe,
			 pegasus->data, pegasus->data_len,
			 pegasus_irq, pegasus, endpoint->bInterval);

	pegasus->irq->transfer_dma = pegasus->data_dma;
	pegasus->irq->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	if (dev->manufacturer)
		FUNC15(pegasus->name, dev->manufacturer,
			sizeof(pegasus->name));

	if (dev->product) {
		if (dev->manufacturer)
			FUNC14(pegasus->name, " ", sizeof(pegasus->name));
		FUNC14(pegasus->name, dev->product, sizeof(pegasus->name));
	}

	if (!FUNC16(pegasus->name))
		FUNC13(pegasus->name, sizeof(pegasus->name),
			 "USB Pegasus Device %04x:%04x",
			 FUNC11(dev->descriptor.idVendor),
			 FUNC11(dev->descriptor.idProduct));

	FUNC22(dev, pegasus->phys, sizeof(pegasus->phys));
	FUNC14(pegasus->phys, "/input0", sizeof(pegasus->phys));

	FUNC0(&pegasus->init, pegasus_init);

	FUNC26(intf, pegasus);

	input_dev->name = pegasus->name;
	input_dev->phys = pegasus->phys;
	FUNC27(dev, &input_dev->id);
	input_dev->dev.parent = &intf->dev;

	FUNC7(input_dev, pegasus);

	input_dev->open = pegasus_open;
	input_dev->close = pegasus_close;

	FUNC1(EV_ABS, input_dev->evbit);
	FUNC1(EV_KEY, input_dev->evbit);

	FUNC1(ABS_X, input_dev->absbit);
	FUNC1(ABS_Y, input_dev->absbit);

	FUNC1(BTN_TOUCH, input_dev->keybit);
	FUNC1(BTN_RIGHT, input_dev->keybit);
	FUNC1(BTN_TOOL_PEN, input_dev->keybit);

	FUNC1(INPUT_PROP_DIRECT, input_dev->propbit);
	FUNC1(INPUT_PROP_POINTER, input_dev->propbit);

	FUNC6(input_dev, ABS_X, -1500, 1500, 8, 0);
	FUNC6(input_dev, ABS_Y, 1600, 3000, 8, 0);

	error = FUNC5(pegasus->dev);
	if (error)
		goto err_free_urb;

	return 0;

err_free_urb:
	FUNC21(pegasus->irq);
err_free_dma:
	FUNC20(dev, pegasus->data_len,
			  pegasus->data, pegasus->data_dma);
err_free_mem:
	FUNC4(input_dev);
	FUNC9(pegasus);
	FUNC26(intf, NULL);

	return error;
}