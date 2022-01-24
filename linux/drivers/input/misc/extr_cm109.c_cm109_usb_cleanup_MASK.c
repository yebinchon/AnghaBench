#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cm109_dev {int /*<<< orphan*/  urb_ctl; int /*<<< orphan*/  urb_irq; int /*<<< orphan*/  irq_dma; scalar_t__ irq_data; int /*<<< orphan*/  udev; int /*<<< orphan*/  ctl_dma; scalar_t__ ctl_data; struct cm109_dev* ctl_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_PKT_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct cm109_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cm109_dev *dev)
{
	FUNC0(dev->ctl_req);
	if (dev->ctl_data)
		FUNC1(dev->udev, USB_PKT_LEN,
				  dev->ctl_data, dev->ctl_dma);
	if (dev->irq_data)
		FUNC1(dev->udev, USB_PKT_LEN,
				  dev->irq_data, dev->irq_dma);

	FUNC2(dev->urb_irq);	/* parameter validation in core/urb */
	FUNC2(dev->urb_ctl);	/* parameter validation in core/urb */
	FUNC0(dev);
}