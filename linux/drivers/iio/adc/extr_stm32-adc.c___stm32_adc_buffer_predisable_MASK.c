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
struct stm32_adc {scalar_t__ dma_chan; TYPE_1__* cfg; } ;
struct TYPE_4__ {struct device* parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* stop_conv ) (struct stm32_adc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct stm32_adc* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_adc*) ; 
 scalar_t__ FUNC6 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_adc*) ; 

__attribute__((used)) static void FUNC8(struct iio_dev *indio_dev)
{
	struct stm32_adc *adc = FUNC2(indio_dev);
	struct device *dev = indio_dev->dev.parent;

	adc->cfg->stop_conv(adc);
	if (!adc->dma_chan)
		FUNC5(adc);

	if (adc->dma_chan)
		FUNC1(adc->dma_chan);

	if (FUNC6(indio_dev, NULL))
		FUNC0(&indio_dev->dev, "Can't clear trigger\n");

	FUNC3(dev);
	FUNC4(dev);
}