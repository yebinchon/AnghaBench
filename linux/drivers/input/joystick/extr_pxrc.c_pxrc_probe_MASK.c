#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; int /*<<< orphan*/  cur_altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct pxrc {TYPE_1__* input; int /*<<< orphan*/  phys; int /*<<< orphan*/  urb; struct usb_interface* intf; int /*<<< orphan*/  pm_mutex; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_RUDDER ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_A ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pxrc*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 struct pxrc* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct pxrc*) ; 
 struct usb_device* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pxrc_close ; 
 int /*<<< orphan*/  pxrc_free_urb ; 
 int /*<<< orphan*/  pxrc_open ; 
 int /*<<< orphan*/  pxrc_usb_irq ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC13 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,struct pxrc*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct usb_endpoint_descriptor**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct pxrc*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct usb_interface *intf,
		      const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC9(intf);
	struct pxrc *pxrc;
	struct usb_endpoint_descriptor *epirq;
	size_t xfer_size;
	void *xfer_buf;
	int error;

	/*
	 * Locate the endpoint information. This device only has an
	 * interrupt endpoint.
	 */
	error = FUNC15(intf->cur_altsetting,
					  NULL, NULL, &epirq, NULL);
	if (error) {
		FUNC0(&intf->dev, "Could not find endpoint\n");
		return error;
	}

	pxrc = FUNC4(&intf->dev, sizeof(*pxrc), GFP_KERNEL);
	if (!pxrc)
		return -ENOMEM;

	FUNC10(&pxrc->pm_mutex);
	pxrc->intf = intf;

	FUNC18(pxrc->intf, pxrc);

	xfer_size = FUNC13(epirq);
	xfer_buf = FUNC3(&intf->dev, xfer_size, GFP_KERNEL);
	if (!xfer_buf)
		return -ENOMEM;

	pxrc->urb = FUNC12(0, GFP_KERNEL);
	if (!pxrc->urb)
		return -ENOMEM;

	error = FUNC1(&intf->dev, pxrc_free_urb, pxrc);
	if (error)
		return error;

	FUNC14(pxrc->urb, udev,
			 FUNC17(udev, epirq->bEndpointAddress),
			 xfer_buf, xfer_size, pxrc_usb_irq, pxrc, 1);

	pxrc->input = FUNC2(&intf->dev);
	if (!pxrc->input) {
		FUNC0(&intf->dev, "couldn't allocate input device\n");
		return -ENOMEM;
	}

	pxrc->input->name = "PXRC Flight Controller Adapter";

	FUNC16(udev, pxrc->phys, sizeof(pxrc->phys));
	FUNC11(pxrc->phys, "/input0", sizeof(pxrc->phys));
	pxrc->input->phys = pxrc->phys;

	FUNC19(udev, &pxrc->input->id);

	pxrc->input->open = pxrc_open;
	pxrc->input->close = pxrc_close;

	FUNC7(pxrc->input, EV_KEY, BTN_A);
	FUNC6(pxrc->input, ABS_X, 0, 255, 0, 0);
	FUNC6(pxrc->input, ABS_Y, 0, 255, 0, 0);
	FUNC6(pxrc->input, ABS_RX, 0, 255, 0, 0);
	FUNC6(pxrc->input, ABS_RY, 0, 255, 0, 0);
	FUNC6(pxrc->input, ABS_RUDDER, 0, 255, 0, 0);
	FUNC6(pxrc->input, ABS_THROTTLE, 0, 255, 0, 0);
	FUNC6(pxrc->input, ABS_MISC, 0, 255, 0, 0);

	FUNC8(pxrc->input, pxrc);

	error = FUNC5(pxrc->input);
	if (error)
		return error;

	return 0;
}