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
struct stm32_adc {int /*<<< orphan*/  dma_chan; TYPE_1__* cfg; scalar_t__ bufi; } ;
struct TYPE_4__ {struct device* parent; } ;
struct iio_dev {TYPE_2__ dev; int /*<<< orphan*/ * trig; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* start_conv ) (struct stm32_adc*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct stm32_adc* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_adc*) ; 
 int FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct stm32_adc*,int) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev)
{
	struct stm32_adc *adc = FUNC1(indio_dev);
	struct device *dev = indio_dev->dev.parent;
	int ret;

	ret = FUNC2(dev);
	if (ret < 0) {
		FUNC5(dev);
		return ret;
	}

	ret = FUNC8(indio_dev, indio_dev->trig);
	if (ret) {
		FUNC0(&indio_dev->dev, "Can't set trigger\n");
		goto err_pm_put;
	}

	ret = FUNC7(indio_dev);
	if (ret) {
		FUNC0(&indio_dev->dev, "Can't start dma\n");
		goto err_clr_trig;
	}

	/* Reset adc buffer index */
	adc->bufi = 0;

	if (!adc->dma_chan)
		FUNC6(adc);

	adc->cfg->start_conv(adc, !!adc->dma_chan);

	return 0;

err_clr_trig:
	FUNC8(indio_dev, NULL);
err_pm_put:
	FUNC3(dev);
	FUNC4(dev);

	return ret;
}