#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;
struct TYPE_6__ {TYPE_3__* dma_chan; int /*<<< orphan*/  rx_dma_buf; int /*<<< orphan*/  rx_buf; } ;
struct at91_adc_state {TYPE_2__ dma_st; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AT91_BUFFER_MAX_CONVERSION_BYTES ; 
 int AT91_HWFIFO_MAX_SIZE ; 
 unsigned int FUNC0 (int,unsigned int) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct at91_adc_state* FUNC5 (struct iio_dev*) ; 
 struct iio_dev* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static void FUNC7(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC6(pdev);
	struct at91_adc_state *st = FUNC5(indio_dev);
	unsigned int pages = FUNC0(AT91_HWFIFO_MAX_SIZE *
					  AT91_BUFFER_MAX_CONVERSION_BYTES * 2,
					  PAGE_SIZE);

	/* if we are not using DMA, just return */
	if (!st->dma_st.dma_chan)
		return;

	/* wait for all transactions to be terminated first*/
	FUNC4(st->dma_st.dma_chan);

	FUNC2(st->dma_st.dma_chan->device->dev, pages * PAGE_SIZE,
			  st->dma_st.rx_buf, st->dma_st.rx_dma_buf);
	FUNC3(st->dma_st.dma_chan);
	st->dma_st.dma_chan = 0;

	FUNC1(&pdev->dev, "continuing without DMA support\n");
}