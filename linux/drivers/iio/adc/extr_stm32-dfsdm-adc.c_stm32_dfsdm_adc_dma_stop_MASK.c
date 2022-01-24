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
struct stm32_dfsdm_adc {int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  fl_id; TYPE_1__* dfsdm; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DFSDM_CR1_JDMAEN_MASK ; 
 int DFSDM_CR1_RDMAEN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct stm32_dfsdm_adc* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iio_dev *indio_dev)
{
	struct stm32_dfsdm_adc *adc = FUNC2(indio_dev);

	if (!adc->dma_chan)
		return;

	FUNC3(adc->dfsdm->regmap, FUNC0(adc->fl_id),
			   DFSDM_CR1_RDMAEN_MASK | DFSDM_CR1_JDMAEN_MASK, 0);
	FUNC1(adc->dma_chan);
}