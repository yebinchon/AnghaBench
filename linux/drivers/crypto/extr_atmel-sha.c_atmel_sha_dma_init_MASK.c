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
struct crypto_platform_data {TYPE_1__* dma_slave; } ;
struct TYPE_5__ {int src_maxburst; int dst_maxburst; int device_fc; void* dst_addr_width; void* src_addr_width; scalar_t__ dst_addr; int /*<<< orphan*/  direction; } ;
struct TYPE_6__ {TYPE_2__ dma_conf; int /*<<< orphan*/  chan; } ;
struct atmel_sha_dev {TYPE_3__ dma_lch_in; scalar_t__ phys_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_4__ {int /*<<< orphan*/  rxdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_sha_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct atmel_sha_dev *dd,
				struct crypto_platform_data *pdata)
{
	dma_cap_mask_t mask_in;

	/* Try to grab DMA channel */
	FUNC3(mask_in);
	FUNC2(DMA_SLAVE, mask_in);

	dd->dma_lch_in.chan = FUNC4(mask_in,
			atmel_sha_filter, &pdata->dma_slave->rxdata, dd->dev, "tx");
	if (!dd->dma_lch_in.chan) {
		FUNC1(dd->dev, "no DMA channel available\n");
		return -ENODEV;
	}

	dd->dma_lch_in.dma_conf.direction = DMA_MEM_TO_DEV;
	dd->dma_lch_in.dma_conf.dst_addr = dd->phys_base +
		FUNC0(0);
	dd->dma_lch_in.dma_conf.src_maxburst = 1;
	dd->dma_lch_in.dma_conf.src_addr_width =
		DMA_SLAVE_BUSWIDTH_4_BYTES;
	dd->dma_lch_in.dma_conf.dst_maxburst = 1;
	dd->dma_lch_in.dma_conf.dst_addr_width =
		DMA_SLAVE_BUSWIDTH_4_BYTES;
	dd->dma_lch_in.dma_conf.device_fc = false;

	return 0;
}