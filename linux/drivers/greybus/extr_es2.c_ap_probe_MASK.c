#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {void* bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** buffer; void* endpoint; struct urb** urb; } ;
struct gb_host_device {int* cport_out_urb_busy; TYPE_3__ cport_in; int /*<<< orphan*/  arpc_lock; int /*<<< orphan*/  arpcs; int /*<<< orphan*/  apb_log_enable_dentry; struct urb** cport_out_urb; int /*<<< orphan*/ ** arpc_buffer; void* arpc_endpoint_in; struct urb** arpc_urb; void* cport_out_endpoint; int /*<<< orphan*/  apb_log_fifo; int /*<<< orphan*/  cport_out_urb_lock; struct usb_device* usb_dev; struct usb_interface* usb_intf; struct gb_host_device* hd; } ;
struct es2_ap_dev {int* cport_out_urb_busy; TYPE_3__ cport_in; int /*<<< orphan*/  arpc_lock; int /*<<< orphan*/  arpcs; int /*<<< orphan*/  apb_log_enable_dentry; struct urb** cport_out_urb; int /*<<< orphan*/ ** arpc_buffer; void* arpc_endpoint_in; struct urb** arpc_urb; void* cport_out_endpoint; int /*<<< orphan*/  apb_log_fifo; int /*<<< orphan*/  cport_out_urb_lock; struct usb_device* usb_dev; struct usb_interface* usb_intf; struct es2_ap_dev* hd; } ;
typedef  void* __u8 ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPC_IN_SIZE_MAX ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ES2_CPORT_CDSI0 ; 
 int /*<<< orphan*/  ES2_CPORT_CDSI1 ; 
 int /*<<< orphan*/  ES2_GBUF_MSG_SIZE_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gb_host_device*) ; 
 int NUM_ARPC_IN_URB ; 
 int NUM_CPORT_IN_URB ; 
 int NUM_CPORT_OUT_URB ; 
 int FUNC3 (struct gb_host_device*) ; 
 int FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  apb_log_enable_fops ; 
 int /*<<< orphan*/  arpc_in_callback ; 
 int /*<<< orphan*/  cport_in_callback ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,struct gb_host_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_host_device*) ; 
 int FUNC9 (struct gb_host_device*) ; 
 int FUNC10 (struct gb_host_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct gb_host_device*) ; 
 int /*<<< orphan*/  es2_driver ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (struct gb_host_device*) ; 
 int FUNC14 (struct gb_host_device*,int /*<<< orphan*/ ) ; 
 struct gb_host_device* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gb_host_device*) ; 
 struct gb_host_device* FUNC17 (struct gb_host_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC23 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC24 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_host_device*) ; 
 struct usb_device* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct usb_device*,void*) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_interface*,struct gb_host_device*) ; 

__attribute__((used)) static int FUNC29(struct usb_interface *interface,
		    const struct usb_device_id *id)
{
	struct es2_ap_dev *es2;
	struct gb_host_device *hd;
	struct usb_device *udev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	__u8 ep_addr;
	int retval;
	int i;
	int num_cports;
	bool bulk_out_found = false;
	bool bulk_in_found = false;
	bool arpc_in_found = false;

	udev = FUNC25(FUNC18(interface));

	num_cports = FUNC4(udev);
	if (num_cports < 0) {
		FUNC26(udev);
		FUNC6(&udev->dev, "Cannot retrieve CPort count: %d\n",
			num_cports);
		return num_cports;
	}

	hd = FUNC15(&es2_driver, &udev->dev, ES2_GBUF_MSG_SIZE_MAX,
			  num_cports);
	if (FUNC2(hd)) {
		FUNC26(udev);
		return FUNC3(hd);
	}

	es2 = FUNC17(hd);
	es2->hd = hd;
	es2->usb_intf = interface;
	es2->usb_dev = udev;
	FUNC20(&es2->cport_out_urb_lock);
	FUNC0(es2->apb_log_fifo);
	FUNC28(interface, es2);

	/*
	 * Reserve the CDSI0 and CDSI1 CPorts so they won't be allocated
	 * dynamically.
	 */
	retval = FUNC14(hd, ES2_CPORT_CDSI0);
	if (retval)
		goto error;
	retval = FUNC14(hd, ES2_CPORT_CDSI1);
	if (retval)
		goto error;

	/* find all bulk endpoints */
	iface_desc = interface->cur_altsetting;
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;
		ep_addr = endpoint->bEndpointAddress;

		if (FUNC22(endpoint)) {
			if (!bulk_in_found) {
				es2->cport_in.endpoint = ep_addr;
				bulk_in_found = true;
			} else if (!arpc_in_found) {
				es2->arpc_endpoint_in = ep_addr;
				arpc_in_found = true;
			} else {
				FUNC7(&udev->dev,
					 "Unused bulk IN endpoint found: 0x%02x\n",
					 ep_addr);
			}
			continue;
		}
		if (FUNC23(endpoint)) {
			if (!bulk_out_found) {
				es2->cport_out_endpoint = ep_addr;
				bulk_out_found = true;
			} else {
				FUNC7(&udev->dev,
					 "Unused bulk OUT endpoint found: 0x%02x\n",
					 ep_addr);
			}
			continue;
		}
		FUNC7(&udev->dev,
			 "Unknown endpoint type found, address 0x%02x\n",
			 ep_addr);
	}
	if (!bulk_in_found || !arpc_in_found || !bulk_out_found) {
		FUNC6(&udev->dev, "Not enough endpoints found in device, aborting!\n");
		retval = -ENODEV;
		goto error;
	}

	/* Allocate buffers for our cport in messages */
	for (i = 0; i < NUM_CPORT_IN_URB; ++i) {
		struct urb *urb;
		u8 *buffer;

		urb = FUNC21(0, GFP_KERNEL);
		if (!urb) {
			retval = -ENOMEM;
			goto error;
		}
		es2->cport_in.urb[i] = urb;

		buffer = FUNC19(ES2_GBUF_MSG_SIZE_MAX, GFP_KERNEL);
		if (!buffer) {
			retval = -ENOMEM;
			goto error;
		}

		FUNC24(urb, udev,
				  FUNC27(udev, es2->cport_in.endpoint),
				  buffer, ES2_GBUF_MSG_SIZE_MAX,
				  cport_in_callback, hd);

		es2->cport_in.buffer[i] = buffer;
	}

	/* Allocate buffers for ARPC in messages */
	for (i = 0; i < NUM_ARPC_IN_URB; ++i) {
		struct urb *urb;
		u8 *buffer;

		urb = FUNC21(0, GFP_KERNEL);
		if (!urb) {
			retval = -ENOMEM;
			goto error;
		}
		es2->arpc_urb[i] = urb;

		buffer = FUNC19(ARPC_IN_SIZE_MAX, GFP_KERNEL);
		if (!buffer) {
			retval = -ENOMEM;
			goto error;
		}

		FUNC24(urb, udev,
				  FUNC27(udev,
						  es2->arpc_endpoint_in),
				  buffer, ARPC_IN_SIZE_MAX,
				  arpc_in_callback, es2);

		es2->arpc_buffer[i] = buffer;
	}

	/* Allocate urbs for our CPort OUT messages */
	for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
		struct urb *urb;

		urb = FUNC21(0, GFP_KERNEL);
		if (!urb) {
			retval = -ENOMEM;
			goto error;
		}

		es2->cport_out_urb[i] = urb;
		es2->cport_out_urb_busy[i] = false;	/* just to be anal */
	}

	/* XXX We will need to rename this per APB */
	es2->apb_log_enable_dentry = FUNC5("apb_log_enable",
							 0644,
							 FUNC12(), es2,
							 &apb_log_enable_fops);

	FUNC1(&es2->arpcs);
	FUNC20(&es2->arpc_lock);

	retval = FUNC9(es2);
	if (retval)
		goto error;

	retval = FUNC13(hd);
	if (retval)
		goto err_disable_arpc_in;

	retval = FUNC10(es2, &es2->cport_in);
	if (retval)
		goto err_hd_del;

	return 0;

err_hd_del:
	FUNC16(hd);
err_disable_arpc_in:
	FUNC8(es2);
error:
	FUNC11(es2);

	return retval;
}