#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int /*<<< orphan*/  src_addr_width; scalar_t__ src_addr; int /*<<< orphan*/  direction; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {TYPE_3__* dma_chan; int /*<<< orphan*/  rx_dma_buf; int /*<<< orphan*/  rx_buf; scalar_t__ phys_addr; } ;
struct at91_adc_state {TYPE_2__ dma_st; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_9__ {TYPE_1__* device; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AT91_BUFFER_MAX_CONVERSION_BYTES ; 
 int AT91_HWFIFO_MAX_SIZE ; 
 scalar_t__ AT91_SAMA5D2_LCDR ; 
 unsigned int FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_2_BYTES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,struct dma_slave_config*) ; 
 struct at91_adc_state* FUNC8 (struct iio_dev*) ; 
 struct iio_dev* FUNC9 (struct platform_device*) ; 

__attribute__((used)) static void FUNC10(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC9(pdev);
	struct at91_adc_state *st = FUNC8(indio_dev);
	struct dma_slave_config config = {0};
	/*
	 * We make the buffer double the size of the fifo,
	 * such that DMA uses one half of the buffer (full fifo size)
	 * and the software uses the other half to read/write.
	 */
	unsigned int pages = FUNC0(AT91_HWFIFO_MAX_SIZE *
					  AT91_BUFFER_MAX_CONVERSION_BYTES * 2,
					  PAGE_SIZE);

	if (st->dma_st.dma_chan)
		return;

	st->dma_st.dma_chan = FUNC6(&pdev->dev, "rx");

	if (!st->dma_st.dma_chan)  {
		FUNC1(&pdev->dev, "can't get DMA channel\n");
		goto dma_exit;
	}

	st->dma_st.rx_buf = FUNC2(st->dma_st.dma_chan->device->dev,
					       pages * PAGE_SIZE,
					       &st->dma_st.rx_dma_buf,
					       GFP_KERNEL);
	if (!st->dma_st.rx_buf) {
		FUNC1(&pdev->dev, "can't allocate coherent DMA area\n");
		goto dma_chan_disable;
	}

	/* Configure DMA channel to read data register */
	config.direction = DMA_DEV_TO_MEM;
	config.src_addr = (phys_addr_t)(st->dma_st.phys_addr
			  + AT91_SAMA5D2_LCDR);
	config.src_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
	config.src_maxburst = 1;
	config.dst_maxburst = 1;

	if (FUNC7(st->dma_st.dma_chan, &config)) {
		FUNC1(&pdev->dev, "can't configure DMA slave\n");
		goto dma_free_area;
	}

	FUNC1(&pdev->dev, "using %s for rx DMA transfers\n",
		 FUNC3(st->dma_st.dma_chan));

	return;

dma_free_area:
	FUNC4(st->dma_st.dma_chan->device->dev, pages * PAGE_SIZE,
			  st->dma_st.rx_buf, st->dma_st.rx_dma_buf);
dma_chan_disable:
	FUNC5(st->dma_st.dma_chan);
	st->dma_st.dma_chan = 0;
dma_exit:
	FUNC1(&pdev->dev, "continuing without DMA support\n");
}