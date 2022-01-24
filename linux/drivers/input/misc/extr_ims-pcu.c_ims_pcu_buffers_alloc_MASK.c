#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ims_pcu {int /*<<< orphan*/  read_dma; void* urb_in_buf; int /*<<< orphan*/  max_in_size; int /*<<< orphan*/  udev; TYPE_3__* urb_in; int /*<<< orphan*/  urb_out_buf; int /*<<< orphan*/  ctrl_dma; void* urb_ctrl_buf; int /*<<< orphan*/  max_ctrl_size; TYPE_2__* ep_ctrl; TYPE_4__* urb_ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  max_out_size; TYPE_1__* ep_in; } ;
struct TYPE_9__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_6__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ims_pcu_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ims_pcu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ims_pcu *pcu)
{
	int error;

	pcu->urb_in_buf = FUNC3(pcu->udev, pcu->max_in_size,
					     GFP_KERNEL, &pcu->read_dma);
	if (!pcu->urb_in_buf) {
		FUNC0(pcu->dev,
			"Failed to allocate memory for read buffer\n");
		return -ENOMEM;
	}

	pcu->urb_in = FUNC4(0, GFP_KERNEL);
	if (!pcu->urb_in) {
		FUNC0(pcu->dev, "Failed to allocate input URB\n");
		error = -ENOMEM;
		goto err_free_urb_in_buf;
	}

	pcu->urb_in->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	pcu->urb_in->transfer_dma = pcu->read_dma;

	FUNC5(pcu->urb_in, pcu->udev,
			  FUNC9(pcu->udev,
					  pcu->ep_in->bEndpointAddress),
			  pcu->urb_in_buf, pcu->max_in_size,
			  ims_pcu_irq, pcu);

	/*
	 * We are using usb_bulk_msg() for sending so there is no point
	 * in allocating memory with usb_alloc_coherent().
	 */
	pcu->urb_out_buf = FUNC2(pcu->max_out_size, GFP_KERNEL);
	if (!pcu->urb_out_buf) {
		FUNC0(pcu->dev, "Failed to allocate memory for write buffer\n");
		error = -ENOMEM;
		goto err_free_in_urb;
	}

	pcu->urb_ctrl_buf = FUNC3(pcu->udev, pcu->max_ctrl_size,
					       GFP_KERNEL, &pcu->ctrl_dma);
	if (!pcu->urb_ctrl_buf) {
		FUNC0(pcu->dev,
			"Failed to allocate memory for read buffer\n");
		error = -ENOMEM;
		goto err_free_urb_out_buf;
	}

	pcu->urb_ctrl = FUNC4(0, GFP_KERNEL);
	if (!pcu->urb_ctrl) {
		FUNC0(pcu->dev, "Failed to allocate input URB\n");
		error = -ENOMEM;
		goto err_free_urb_ctrl_buf;
	}

	pcu->urb_ctrl->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	pcu->urb_ctrl->transfer_dma = pcu->ctrl_dma;

	FUNC6(pcu->urb_ctrl, pcu->udev,
			  FUNC10(pcu->udev,
					 pcu->ep_ctrl->bEndpointAddress),
			  pcu->urb_ctrl_buf, pcu->max_ctrl_size,
			  ims_pcu_irq, pcu, pcu->ep_ctrl->bInterval);

	return 0;

err_free_urb_ctrl_buf:
	FUNC7(pcu->udev, pcu->max_ctrl_size,
			  pcu->urb_ctrl_buf, pcu->ctrl_dma);
err_free_urb_out_buf:
	FUNC1(pcu->urb_out_buf);
err_free_in_urb:
	FUNC8(pcu->urb_in);
err_free_urb_in_buf:
	FUNC7(pcu->udev, pcu->max_in_size,
			  pcu->urb_in_buf, pcu->read_dma);
	return error;
}