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
struct txx9dmac_slave {int /*<<< orphan*/  reg_width; scalar_t__ rx_reg; scalar_t__ tx_reg; } ;
struct txx9dmac_desc {int dummy; } ;
struct txx9dmac_chan {int ccr; int descs_allocated; int /*<<< orphan*/  lock; } ;
struct dma_chan {TYPE_1__* device; struct txx9dmac_slave* private; } ;
struct TYPE_2__ {scalar_t__ device_prep_dma_memcpy; } ;

/* Variables and functions */
 int CCR_LE ; 
 int /*<<< orphan*/  CSR ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TXX9_DMA_CCR_EXTRQ ; 
 int TXX9_DMA_CCR_IMMCHN ; 
 int TXX9_DMA_CCR_INTENC ; 
 int TXX9_DMA_CCR_INTENE ; 
 int TXX9_DMA_CCR_SMPCHN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TXX9_DMA_CCR_XFSZ_X8 ; 
 int TXX9_DMA_CSR_XFACT ; 
 int TXX9_DMA_INITIAL_DESC_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int FUNC3 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct txx9dmac_chan* FUNC10 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct txx9dmac_chan*) ; 
 int /*<<< orphan*/  FUNC13 (struct txx9dmac_chan*) ; 
 struct txx9dmac_desc* FUNC14 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct txx9dmac_chan*,struct txx9dmac_desc*) ; 

__attribute__((used)) static int FUNC16(struct dma_chan *chan)
{
	struct txx9dmac_chan *dc = FUNC10(chan);
	struct txx9dmac_slave *ds = chan->private;
	struct txx9dmac_desc *desc;
	int i;

	FUNC6(FUNC2(chan), "alloc_chan_resources\n");

	/* ASSERT:  channel is idle */
	if (FUNC3(dc, CSR) & TXX9_DMA_CSR_XFACT) {
		FUNC4(FUNC2(chan), "DMA channel not idle?\n");
		return -EIO;
	}

	FUNC7(chan);

	dc->ccr = TXX9_DMA_CCR_IMMCHN | TXX9_DMA_CCR_INTENE | CCR_LE;
	FUNC13(dc);
	if (!FUNC11() || (dc->ccr & TXX9_DMA_CCR_SMPCHN))
		dc->ccr |= TXX9_DMA_CCR_INTENC;
	if (chan->device->device_prep_dma_memcpy) {
		if (ds)
			return -EINVAL;
		dc->ccr |= TXX9_DMA_CCR_XFSZ_X8;
	} else {
		if (!ds ||
		    (ds->tx_reg && ds->rx_reg) || (!ds->tx_reg && !ds->rx_reg))
			return -EINVAL;
		dc->ccr |= TXX9_DMA_CCR_EXTRQ |
			FUNC0(FUNC1(ds->reg_width));
		FUNC12(dc);
	}

	FUNC8(&dc->lock);
	i = dc->descs_allocated;
	while (dc->descs_allocated < TXX9_DMA_INITIAL_DESC_COUNT) {
		FUNC9(&dc->lock);

		desc = FUNC14(dc, GFP_KERNEL);
		if (!desc) {
			FUNC5(FUNC2(chan),
				"only allocated %d descriptors\n", i);
			FUNC8(&dc->lock);
			break;
		}
		FUNC15(dc, desc);

		FUNC8(&dc->lock);
		i = ++dc->descs_allocated;
	}
	FUNC9(&dc->lock);

	FUNC4(FUNC2(chan),
		"alloc_chan_resources allocated %d descriptors\n", i);

	return i;
}