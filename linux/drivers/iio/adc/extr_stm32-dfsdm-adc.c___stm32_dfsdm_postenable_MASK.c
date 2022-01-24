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
struct stm32_dfsdm_adc {scalar_t__ hwc; int /*<<< orphan*/  dfsdm; scalar_t__ bufi; } ;
struct iio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 struct stm32_dfsdm_adc* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct stm32_dfsdm_adc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev)
{
	struct stm32_dfsdm_adc *adc = FUNC3(indio_dev);
	int ret;

	/* Reset adc buffer index */
	adc->bufi = 0;

	if (adc->hwc) {
		ret = FUNC2(adc->hwc);
		if (ret < 0)
			return ret;
	}

	ret = FUNC7(adc->dfsdm);
	if (ret < 0)
		goto err_stop_hwc;

	ret = FUNC4(indio_dev);
	if (ret) {
		FUNC0(&indio_dev->dev, "Can't start DMA\n");
		goto stop_dfsdm;
	}

	ret = FUNC6(adc, indio_dev->trig);
	if (ret) {
		FUNC0(&indio_dev->dev, "Can't start conversion\n");
		goto err_stop_dma;
	}

	return 0;

err_stop_dma:
	FUNC5(indio_dev);
stop_dfsdm:
	FUNC8(adc->dfsdm);
err_stop_hwc:
	if (adc->hwc)
		FUNC1(adc->hwc);

	return ret;
}