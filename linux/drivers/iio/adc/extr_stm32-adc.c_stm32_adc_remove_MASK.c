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
struct stm32_adc {TYPE_2__* dma_chan; int /*<<< orphan*/  rx_dma_buf; int /*<<< orphan*/  rx_buf; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STM32_DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct stm32_adc* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct stm32_adc *adc = FUNC5(pdev);
	struct iio_dev *indio_dev = FUNC3(adc);

	FUNC7(&pdev->dev);
	FUNC2(indio_dev);
	FUNC10(&pdev->dev);
	FUNC6(&pdev->dev);
	FUNC9(&pdev->dev);
	FUNC8(&pdev->dev);
	FUNC4(indio_dev);
	if (adc->dma_chan) {
		FUNC0(adc->dma_chan->device->dev,
				  STM32_DMA_BUFFER_SIZE,
				  adc->rx_buf, adc->rx_dma_buf);
		FUNC1(adc->dma_chan);
	}

	return 0;
}