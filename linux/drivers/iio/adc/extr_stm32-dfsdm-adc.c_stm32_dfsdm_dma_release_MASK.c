#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stm32_dfsdm_adc {TYPE_2__* dma_chan; int /*<<< orphan*/  dma_buf; int /*<<< orphan*/  rx_buf; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFSDM_DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct stm32_dfsdm_adc* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static void FUNC3(struct iio_dev *indio_dev)
{
	struct stm32_dfsdm_adc *adc = FUNC2(indio_dev);

	if (adc->dma_chan) {
		FUNC0(adc->dma_chan->device->dev,
				  DFSDM_DMA_BUFFER_SIZE,
				  adc->rx_buf, adc->dma_buf);
		FUNC1(adc->dma_chan);
	}
}