#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtl2832_sdr_dev {int /*<<< orphan*/  urbs_initialized; int /*<<< orphan*/ * dma_addr; TYPE_1__** urb_list; int /*<<< orphan*/ * buf_list; int /*<<< orphan*/  udev; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_BUFFER_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_BULK_BUFS ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  rtl2832_sdr_urb_complete ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct rtl2832_sdr_dev *dev)
{
	struct platform_device *pdev = dev->pdev;
	int i, j;

	/* allocate the URBs */
	for (i = 0; i < MAX_BULK_BUFS; i++) {
		FUNC0(&pdev->dev, "alloc urb=%d\n", i);
		dev->urb_list[i] = FUNC1(0, GFP_KERNEL);
		if (!dev->urb_list[i]) {
			for (j = 0; j < i; j++)
				FUNC3(dev->urb_list[j]);
			return -ENOMEM;
		}
		FUNC2(dev->urb_list[i],
				dev->udev,
				FUNC4(dev->udev, 0x81),
				dev->buf_list[i],
				BULK_BUFFER_SIZE,
				rtl2832_sdr_urb_complete, dev);

		dev->urb_list[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
		dev->urb_list[i]->transfer_dma = dev->dma_addr[i];
		dev->urbs_initialized++;
	}

	return 0;
}