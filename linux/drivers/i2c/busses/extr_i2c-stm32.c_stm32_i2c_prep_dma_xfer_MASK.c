#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct stm32_i2c_dma {int /*<<< orphan*/  dma_data_dir; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_buf; TYPE_2__* chan_using; int /*<<< orphan*/  dma_complete; int /*<<< orphan*/  dma_transfer_dir; TYPE_2__* chan_tx; TYPE_2__* chan_rx; } ;
struct dma_async_tx_descriptor {void* callback_param; int /*<<< orphan*/  callback; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_async_tx_callback ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct device *dev, struct stm32_i2c_dma *dma,
			    bool rd_wr, u32 len, u8 *buf,
			    dma_async_tx_callback callback,
			    void *dma_async_param)
{
	struct dma_async_tx_descriptor *txdesc;
	struct device *chan_dev;
	int ret;

	if (rd_wr) {
		dma->chan_using = dma->chan_rx;
		dma->dma_transfer_dir = DMA_DEV_TO_MEM;
		dma->dma_data_dir = DMA_FROM_DEVICE;
	} else {
		dma->chan_using = dma->chan_tx;
		dma->dma_transfer_dir = DMA_MEM_TO_DEV;
		dma->dma_data_dir = DMA_TO_DEVICE;
	}

	dma->dma_len = len;
	chan_dev = dma->chan_using->device->dev;

	dma->dma_buf = FUNC2(chan_dev, buf, dma->dma_len,
				      dma->dma_data_dir);
	if (FUNC3(chan_dev, dma->dma_buf)) {
		FUNC0(dev, "DMA mapping failed\n");
		return -EINVAL;
	}

	txdesc = FUNC6(dma->chan_using, dma->dma_buf,
					     dma->dma_len,
					     dma->dma_transfer_dir,
					     DMA_PREP_INTERRUPT);
	if (!txdesc) {
		FUNC0(dev, "Not able to get desc for DMA xfer\n");
		ret = -EINVAL;
		goto err;
	}

	FUNC8(&dma->dma_complete);

	txdesc->callback = callback;
	txdesc->callback_param = dma_async_param;
	ret = FUNC4(FUNC7(txdesc));
	if (ret < 0) {
		FUNC0(dev, "DMA submit failed\n");
		goto err;
	}

	FUNC1(dma->chan_using);

	return 0;

err:
	FUNC5(chan_dev, dma->dma_buf, dma->dma_len,
			 dma->dma_data_dir);
	return ret;
}