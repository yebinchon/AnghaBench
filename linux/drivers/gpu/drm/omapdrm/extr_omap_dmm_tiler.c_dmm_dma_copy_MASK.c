#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dmm {TYPE_1__* wa_dma_chan; int /*<<< orphan*/  dev; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  (* tx_submit ) (struct dma_async_tx_descriptor*) ;} ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {struct dma_device* device; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct dma_async_tx_descriptor* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static int FUNC7(struct dmm *dmm, dma_addr_t src, dma_addr_t dst)
{
	struct dma_device *dma_dev = dmm->wa_dma_chan->device;
	struct dma_async_tx_descriptor *tx;
	enum dma_status status;
	dma_cookie_t cookie;

	tx = dma_dev->device_prep_dma_memcpy(dmm->wa_dma_chan, dst, src, 4, 0);
	if (!tx) {
		FUNC0(dmm->dev, "Failed to prepare DMA memcpy\n");
		return -EIO;
	}

	cookie = tx->tx_submit(tx);
	if (FUNC2(cookie)) {
		FUNC0(dmm->dev, "Failed to do DMA tx_submit\n");
		return -EIO;
	}

	FUNC1(dmm->wa_dma_chan);
	status = FUNC3(dmm->wa_dma_chan, cookie);
	if (status != DMA_COMPLETE)
		FUNC0(dmm->dev, "i878 wa DMA copy failure\n");

	FUNC4(dmm->wa_dma_chan);
	return 0;
}