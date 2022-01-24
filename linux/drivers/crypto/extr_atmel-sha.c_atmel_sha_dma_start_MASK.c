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
struct scatterlist {int dummy; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct atmel_sha_dev* callback_param; int /*<<< orphan*/  callback; } ;
struct atmel_sha_dma {int /*<<< orphan*/  nents; struct scatterlist* sg; struct dma_chan* chan; struct dma_slave_config dma_conf; } ;
struct atmel_sha_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  resume; struct atmel_sha_dma dma_lch_in; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  atmel_sha_fn_t ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int FUNC0 (struct atmel_sha_dev*,int) ; 
 int /*<<< orphan*/  atmel_sha_dma_callback2 ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC5 (struct dma_chan*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct dma_chan*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static int FUNC8(struct atmel_sha_dev *dd,
			       struct scatterlist *src,
			       size_t len,
			       atmel_sha_fn_t resume)
{
	struct atmel_sha_dma *dma = &dd->dma_lch_in;
	struct dma_slave_config *config = &dma->dma_conf;
	struct dma_chan *chan = dma->chan;
	struct dma_async_tx_descriptor *desc;
	dma_cookie_t cookie;
	unsigned int sg_len;
	int err;

	dd->resume = resume;

	/*
	 * dma->nents has already been initialized by
	 * atmel_sha_dma_check_aligned().
	 */
	dma->sg = src;
	sg_len = FUNC2(dd->dev, dma->sg, dma->nents, DMA_TO_DEVICE);
	if (!sg_len) {
		err = -ENOMEM;
		goto exit;
	}

	config->src_maxburst = 16;
	config->dst_maxburst = 16;
	err = FUNC6(chan, config);
	if (err)
		goto unmap_sg;

	desc = FUNC5(chan, dma->sg, sg_len, DMA_MEM_TO_DEV,
				       DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc) {
		err = -ENOMEM;
		goto unmap_sg;
	}

	desc->callback = atmel_sha_dma_callback2;
	desc->callback_param = dd;
	cookie = FUNC7(desc);
	err = FUNC3(cookie);
	if (err)
		goto unmap_sg;

	FUNC1(chan);

	return -EINPROGRESS;

unmap_sg:
	FUNC4(dd->dev, dma->sg, dma->nents, DMA_TO_DEVICE);
exit:
	return FUNC0(dd, err);
}