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
typedef  int /*<<< orphan*/  u32 ;
struct tiadc_dma {TYPE_2__* chan; int /*<<< orphan*/  addr; int /*<<< orphan*/  buf; } ;
struct tiadc_device {int /*<<< orphan*/  mfd_tscadc; struct tiadc_dma dma; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tiadc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct tiadc_device* FUNC5 (struct iio_dev*) ; 
 struct iio_dev* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC6(pdev);
	struct tiadc_device *adc_dev = FUNC5(indio_dev);
	struct tiadc_dma *dma = &adc_dev->dma;
	u32 step_en;

	if (dma->chan) {
		FUNC1(dma->chan->device->dev, DMA_BUFFER_SIZE,
				  dma->buf, dma->addr);
		FUNC2(dma->chan);
	}
	FUNC4(indio_dev);
	FUNC8(indio_dev);
	FUNC7(indio_dev);

	step_en = FUNC3(adc_dev);
	FUNC0(adc_dev->mfd_tscadc, step_en);

	return 0;
}