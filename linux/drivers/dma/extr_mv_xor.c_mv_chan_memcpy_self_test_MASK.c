#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct dma_chan {TYPE_1__* device; } ;
struct mv_xor_chan {struct dma_chan dmachan; } ;
struct dmaengine_unmap_data {int to_cnt; int from_cnt; int len; void** addr; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DMA_COMPLETE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 struct dmaengine_unmap_data* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dmaengine_unmap_data*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC14 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC15 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC16 (struct dma_chan*,void*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 

__attribute__((used)) static int FUNC21(struct mv_xor_chan *mv_chan)
{
	int i, ret;
	void *src, *dest;
	dma_addr_t src_dma, dest_dma;
	struct dma_chan *dma_chan;
	dma_cookie_t cookie;
	struct dma_async_tx_descriptor *tx;
	struct dmaengine_unmap_data *unmap;
	int err = 0;

	src = FUNC9(PAGE_SIZE, GFP_KERNEL);
	if (!src)
		return -ENOMEM;

	dest = FUNC10(PAGE_SIZE, GFP_KERNEL);
	if (!dest) {
		FUNC8(src);
		return -ENOMEM;
	}

	/* Fill in src buffer */
	for (i = 0; i < PAGE_SIZE; i++)
		((u8 *) src)[i] = (u8)i;

	dma_chan = &mv_chan->dmachan;
	if (FUNC13(dma_chan) < 1) {
		err = -ENODEV;
		goto out;
	}

	unmap = FUNC6(dma_chan->device->dev, 2, GFP_KERNEL);
	if (!unmap) {
		err = -ENOMEM;
		goto free_resources;
	}

	src_dma = FUNC2(dma_chan->device->dev, FUNC20(src),
			       FUNC19(src), PAGE_SIZE,
			       DMA_TO_DEVICE);
	unmap->addr[0] = src_dma;

	ret = FUNC3(dma_chan->device->dev, src_dma);
	if (ret) {
		err = -ENOMEM;
		goto free_resources;
	}
	unmap->to_cnt = 1;

	dest_dma = FUNC2(dma_chan->device->dev, FUNC20(dest),
				FUNC19(dest), PAGE_SIZE,
				DMA_FROM_DEVICE);
	unmap->addr[1] = dest_dma;

	ret = FUNC3(dma_chan->device->dev, dest_dma);
	if (ret) {
		err = -ENOMEM;
		goto free_resources;
	}
	unmap->from_cnt = 1;
	unmap->len = PAGE_SIZE;

	tx = FUNC16(dma_chan, dest_dma, src_dma,
				    PAGE_SIZE, 0);
	if (!tx) {
		FUNC1(dma_chan->device->dev,
			"Self-test cannot prepare operation, disabling\n");
		err = -ENODEV;
		goto free_resources;
	}

	cookie = FUNC18(tx);
	if (FUNC4(cookie)) {
		FUNC1(dma_chan->device->dev,
			"Self-test submit error, disabling\n");
		err = -ENODEV;
		goto free_resources;
	}

	FUNC15(dma_chan);
	FUNC0(tx);
	FUNC12(1);

	if (FUNC17(dma_chan, cookie, NULL) !=
	    DMA_COMPLETE) {
		FUNC1(dma_chan->device->dev,
			"Self-test copy timed out, disabling\n");
		err = -ENODEV;
		goto free_resources;
	}

	FUNC5(dma_chan->device->dev, dest_dma,
				PAGE_SIZE, DMA_FROM_DEVICE);
	if (FUNC11(src, dest, PAGE_SIZE)) {
		FUNC1(dma_chan->device->dev,
			"Self-test copy failed compare, disabling\n");
		err = -ENODEV;
		goto free_resources;
	}

free_resources:
	FUNC7(unmap);
	FUNC14(dma_chan);
out:
	FUNC8(src);
	FUNC8(dest);
	return err;
}