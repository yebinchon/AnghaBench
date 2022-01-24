#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  version; } ;
struct input_dev {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; TYPE_2__ id; int /*<<< orphan*/  phys; } ;
struct bcm5974_config {scalar_t__ tp_type; int /*<<< orphan*/  bt_datalen; int /*<<< orphan*/  tp_datalen; int /*<<< orphan*/  caps; int /*<<< orphan*/  tp_ep; int /*<<< orphan*/  bt_ep; } ;
struct bcm5974 {TYPE_3__* bt_urb; TYPE_3__* tp_urb; void* bt_data; struct bcm5974_config cfg; struct usb_device* udev; void* tp_data; struct input_dev* input; int /*<<< orphan*/  phys; int /*<<< orphan*/  pm_mutex; struct usb_interface* intf; } ;
struct TYPE_7__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ TYPE1 ; 
 int /*<<< orphan*/  bcm5974_close ; 
 struct bcm5974_config* FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  bcm5974_irq_button ; 
 int /*<<< orphan*/  bcm5974_irq_trackpad ; 
 int /*<<< orphan*/  bcm5974_open ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,struct bcm5974*) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm5974*) ; 
 struct bcm5974* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,struct bcm5974_config const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC12 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcm5974*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_interface*,struct bcm5974*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC21(struct usb_interface *iface,
			 const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC6(iface);
	const struct bcm5974_config *cfg;
	struct bcm5974 *dev;
	struct input_dev *input_dev;
	int error = -ENOMEM;

	/* find the product index */
	cfg = FUNC0(udev);

	/* allocate memory for our device state and initialize it */
	dev = FUNC8(sizeof(struct bcm5974), GFP_KERNEL);
	input_dev = FUNC2();
	if (!dev || !input_dev) {
		FUNC1(&iface->dev, "out of memory\n");
		goto err_free_devs;
	}

	dev->udev = udev;
	dev->intf = iface;
	dev->input = input_dev;
	dev->cfg = *cfg;
	FUNC9(&dev->pm_mutex);

	/* setup urbs */
	if (cfg->tp_type == TYPE1) {
		dev->bt_urb = FUNC13(0, GFP_KERNEL);
		if (!dev->bt_urb)
			goto err_free_devs;
	}

	dev->tp_urb = FUNC13(0, GFP_KERNEL);
	if (!dev->tp_urb)
		goto err_free_bt_urb;

	if (dev->bt_urb) {
		dev->bt_data = FUNC12(dev->udev,
					  dev->cfg.bt_datalen, GFP_KERNEL,
					  &dev->bt_urb->transfer_dma);
		if (!dev->bt_data)
			goto err_free_urb;
	}

	dev->tp_data = FUNC12(dev->udev,
					  dev->cfg.tp_datalen, GFP_KERNEL,
					  &dev->tp_urb->transfer_dma);
	if (!dev->tp_data)
		goto err_free_bt_buffer;

	if (dev->bt_urb)
		FUNC14(dev->bt_urb, udev,
				 FUNC18(udev, cfg->bt_ep),
				 dev->bt_data, dev->cfg.bt_datalen,
				 bcm5974_irq_button, dev, 1);

	FUNC14(dev->tp_urb, udev,
			 FUNC18(udev, cfg->tp_ep),
			 dev->tp_data, dev->cfg.tp_datalen,
			 bcm5974_irq_trackpad, dev, 1);

	/* create bcm5974 device */
	FUNC17(udev, dev->phys, sizeof(dev->phys));
	FUNC11(dev->phys, "/input0", sizeof(dev->phys));

	input_dev->name = "bcm5974";
	input_dev->phys = dev->phys;
	FUNC20(dev->udev, &input_dev->id);
	/* report driver capabilities via the version field */
	input_dev->id.version = cfg->caps;
	input_dev->dev.parent = &iface->dev;

	FUNC5(input_dev, dev);

	input_dev->open = bcm5974_open;
	input_dev->close = bcm5974_close;

	FUNC10(input_dev, cfg);

	error = FUNC4(dev->input);
	if (error)
		goto err_free_buffer;

	/* save our data pointer in this interface device */
	FUNC19(iface, dev);

	return 0;

err_free_buffer:
	FUNC15(dev->udev, dev->cfg.tp_datalen,
		dev->tp_data, dev->tp_urb->transfer_dma);
err_free_bt_buffer:
	if (dev->bt_urb)
		FUNC15(dev->udev, dev->cfg.bt_datalen,
				  dev->bt_data, dev->bt_urb->transfer_dma);
err_free_urb:
	FUNC16(dev->tp_urb);
err_free_bt_urb:
	FUNC16(dev->bt_urb);
err_free_devs:
	FUNC19(iface, NULL);
	FUNC3(input_dev);
	FUNC7(dev);
	return error;
}