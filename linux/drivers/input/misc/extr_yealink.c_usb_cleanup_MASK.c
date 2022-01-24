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
struct yealink_dev {int /*<<< orphan*/  irq_dma; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  udev; int /*<<< orphan*/  ctl_dma; int /*<<< orphan*/  ctl_data; struct yealink_dev* ctl_req; int /*<<< orphan*/  urb_ctl; int /*<<< orphan*/  urb_irq; scalar_t__ idev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_PKT_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct yealink_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct yealink_dev *yld, int err)
{
	if (yld == NULL)
		return err;

        if (yld->idev) {
		if (err)
			FUNC0(yld->idev);
		else
			FUNC1(yld->idev);
	}

	FUNC4(yld->urb_irq);
	FUNC4(yld->urb_ctl);

	FUNC2(yld->ctl_req);
	FUNC3(yld->udev, USB_PKT_LEN, yld->ctl_data, yld->ctl_dma);
	FUNC3(yld->udev, USB_PKT_LEN, yld->irq_data, yld->irq_dma);

	FUNC2(yld);
	return err;
}