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
struct stm32_dfsdm_adc {unsigned int* buffer; int /*<<< orphan*/  fl_id; int /*<<< orphan*/  completion; TYPE_1__* dfsdm; } ;
struct regmap {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int DFSDM_CR2_ROVRIE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFSDM_ICR_CLRROVRF_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int DFSDM_ISR_REOCF_MASK ; 
 unsigned int DFSDM_ISR_ROVRF_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC6 (struct stm32_dfsdm_adc*) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *arg)
{
	struct stm32_dfsdm_adc *adc = arg;
	struct iio_dev *indio_dev = FUNC6(adc);
	struct regmap *regmap = adc->dfsdm->regmap;
	unsigned int status, int_en;

	FUNC7(regmap, FUNC2(adc->fl_id), &status);
	FUNC7(regmap, FUNC0(adc->fl_id), &int_en);

	if (status & DFSDM_ISR_REOCF_MASK) {
		/* Read the data register clean the IRQ status */
		FUNC7(regmap, FUNC3(adc->fl_id), adc->buffer);
		FUNC4(&adc->completion);
	}

	if (status & DFSDM_ISR_ROVRF_MASK) {
		if (int_en & DFSDM_CR2_ROVRIE_MASK)
			FUNC5(&indio_dev->dev, "Overrun detected\n");
		FUNC8(regmap, FUNC1(adc->fl_id),
				   DFSDM_ICR_CLRROVRF_MASK,
				   DFSDM_ICR_CLRROVRF_MASK);
	}

	return IRQ_HANDLED;
}