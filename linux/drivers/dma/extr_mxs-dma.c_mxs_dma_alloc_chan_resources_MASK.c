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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct mxs_dma_engine {TYPE_1__ dma_device; int /*<<< orphan*/  clk; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_submit; } ;
struct mxs_dma_chan {int /*<<< orphan*/  ccw_phys; int /*<<< orphan*/  ccw; int /*<<< orphan*/  chan_irq; TYPE_2__ desc; struct mxs_dma_engine* mxs_dma; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_BLOCK_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mxs_dma_engine*) ; 
 int /*<<< orphan*/  mxs_dma_int_handler ; 
 int /*<<< orphan*/  FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  mxs_dma_tx_submit ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mxs_dma_engine*) ; 
 struct mxs_dma_chan* FUNC8 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct mxs_dma_chan *mxs_chan = FUNC8(chan);
	struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
	int ret;

	mxs_chan->ccw = FUNC2(mxs_dma->dma_device.dev,
					   CCW_BLOCK_SIZE,
					   &mxs_chan->ccw_phys, GFP_KERNEL);
	if (!mxs_chan->ccw) {
		ret = -ENOMEM;
		goto err_alloc;
	}

	ret = FUNC7(mxs_chan->chan_irq, mxs_dma_int_handler,
			  0, "mxs-dma", mxs_dma);
	if (ret)
		goto err_irq;

	ret = FUNC1(mxs_dma->clk);
	if (ret)
		goto err_clk;

	FUNC6(chan);

	FUNC3(&mxs_chan->desc, chan);
	mxs_chan->desc.tx_submit = mxs_dma_tx_submit;

	/* the descriptor is ready */
	FUNC0(&mxs_chan->desc);

	return 0;

err_clk:
	FUNC5(mxs_chan->chan_irq, mxs_dma);
err_irq:
	FUNC4(mxs_dma->dma_device.dev, CCW_BLOCK_SIZE,
			mxs_chan->ccw, mxs_chan->ccw_phys);
err_alloc:
	return ret;
}