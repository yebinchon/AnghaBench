#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_4__* endpoint; TYPE_3__ desc; } ;
struct usb_cdc_union_desc {int /*<<< orphan*/  bSlaveInterface0; int /*<<< orphan*/  bMasterInterface0; } ;
struct ims_pcu {int max_out_size; int max_in_size; int /*<<< orphan*/  dev; int /*<<< orphan*/ * ep_in; int /*<<< orphan*/ * ep_out; TYPE_2__* data_intf; int /*<<< orphan*/  udev; int /*<<< orphan*/ * ep_ctrl; void* max_ctrl_size; TYPE_1__* ctrl_intf; } ;
struct TYPE_8__ {int /*<<< orphan*/  desc; } ;
struct TYPE_6__ {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {struct usb_host_interface* cur_altsetting; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct usb_cdc_union_desc* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf, struct ims_pcu *pcu)
{
	const struct usb_cdc_union_desc *union_desc;
	struct usb_host_interface *alt;

	union_desc = FUNC1(intf);
	if (!union_desc)
		return -EINVAL;

	pcu->ctrl_intf = FUNC5(pcu->udev,
					 union_desc->bMasterInterface0);
	if (!pcu->ctrl_intf)
		return -EINVAL;

	alt = pcu->ctrl_intf->cur_altsetting;

	if (alt->desc.bNumEndpoints < 1)
		return -ENODEV;

	pcu->ep_ctrl = &alt->endpoint[0].desc;
	pcu->max_ctrl_size = FUNC4(pcu->ep_ctrl);

	pcu->data_intf = FUNC5(pcu->udev,
					 union_desc->bSlaveInterface0);
	if (!pcu->data_intf)
		return -EINVAL;

	alt = pcu->data_intf->cur_altsetting;
	if (alt->desc.bNumEndpoints != 2) {
		FUNC0(pcu->dev,
			"Incorrect number of endpoints on data interface (%d)\n",
			alt->desc.bNumEndpoints);
		return -EINVAL;
	}

	pcu->ep_out = &alt->endpoint[0].desc;
	if (!FUNC3(pcu->ep_out)) {
		FUNC0(pcu->dev,
			"First endpoint on data interface is not BULK OUT\n");
		return -EINVAL;
	}

	pcu->max_out_size = FUNC4(pcu->ep_out);
	if (pcu->max_out_size < 8) {
		FUNC0(pcu->dev,
			"Max OUT packet size is too small (%zd)\n",
			pcu->max_out_size);
		return -EINVAL;
	}

	pcu->ep_in = &alt->endpoint[1].desc;
	if (!FUNC2(pcu->ep_in)) {
		FUNC0(pcu->dev,
			"Second endpoint on data interface is not BULK IN\n");
		return -EINVAL;
	}

	pcu->max_in_size = FUNC4(pcu->ep_in);
	if (pcu->max_in_size < 8) {
		FUNC0(pcu->dev,
			"Max IN packet size is too small (%zd)\n",
			pcu->max_in_size);
		return -EINVAL;
	}

	return 0;
}