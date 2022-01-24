#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stm32_dfsdm_adc {int* buffer; int nconv; TYPE_1__* dfsdm; int /*<<< orphan*/  fl_id; int /*<<< orphan*/  completion; int /*<<< orphan*/  smask; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  scan_index; } ;
struct TYPE_3__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DFSDM_CR2_REOCIE_MASK ; 
 int /*<<< orphan*/  DFSDM_TIMEOUT ; 
 int ETIMEDOUT ; 
 int IIO_VAL_INT ; 
 struct stm32_dfsdm_adc* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct stm32_dfsdm_adc*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_dfsdm_adc*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct iio_dev *indio_dev,
				   const struct iio_chan_spec *chan, int *res)
{
	struct stm32_dfsdm_adc *adc = FUNC3(indio_dev);
	long timeout;
	int ret;

	FUNC5(&adc->completion);

	adc->buffer = res;

	ret = FUNC7(adc->dfsdm);
	if (ret < 0)
		return ret;

	ret = FUNC4(adc->dfsdm->regmap, FUNC1(adc->fl_id),
				 DFSDM_CR2_REOCIE_MASK, FUNC2(1));
	if (ret < 0)
		goto stop_dfsdm;

	adc->nconv = 1;
	adc->smask = FUNC0(chan->scan_index);
	ret = FUNC6(adc, NULL);
	if (ret < 0) {
		FUNC4(adc->dfsdm->regmap, FUNC1(adc->fl_id),
				   DFSDM_CR2_REOCIE_MASK, FUNC2(0));
		goto stop_dfsdm;
	}

	timeout = FUNC10(&adc->completion,
							    DFSDM_TIMEOUT);

	/* Mask IRQ for regular conversion achievement*/
	FUNC4(adc->dfsdm->regmap, FUNC1(adc->fl_id),
			   DFSDM_CR2_REOCIE_MASK, FUNC2(0));

	if (timeout == 0)
		ret = -ETIMEDOUT;
	else if (timeout < 0)
		ret = timeout;
	else
		ret = IIO_VAL_INT;

	FUNC8(adc);

stop_dfsdm:
	FUNC9(adc->dfsdm);

	return ret;
}