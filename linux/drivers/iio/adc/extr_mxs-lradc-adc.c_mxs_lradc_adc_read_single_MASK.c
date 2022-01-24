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
struct mxs_lradc_adc {scalar_t__ base; int /*<<< orphan*/  completion; int /*<<< orphan*/  is_divided; struct mxs_lradc* lradc; } ;
struct mxs_lradc {scalar_t__ soc; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int IIO_VAL_INT ; 
 scalar_t__ IMX28_LRADC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int LRADC_CH_VALUE_MASK ; 
 scalar_t__ LRADC_CTRL0 ; 
 scalar_t__ LRADC_CTRL1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LRADC_CTRL2 ; 
 int LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET ; 
 scalar_t__ LRADC_CTRL4 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ STMP_OFFSET_REG_SET ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct mxs_lradc_adc* FUNC6 (struct iio_dev*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct iio_dev *iio_dev, int chan,
				     int *val)
{
	struct mxs_lradc_adc *adc = FUNC6(iio_dev);
	struct mxs_lradc *lradc = adc->lradc;
	int ret;

	/*
	 * See if there is no buffered operation in progress. If there is simply
	 * bail out. This can be improved to support both buffered and raw IO at
	 * the same time, yet the code becomes horribly complicated. Therefore I
	 * applied KISS principle here.
	 */
	ret = FUNC4(iio_dev);
	if (ret)
		return ret;

	FUNC8(&adc->completion);

	/*
	 * No buffered operation in progress, map the channel and trigger it.
	 * Virtual channel 0 is always used here as the others are always not
	 * used if doing raw sampling.
	 */
	if (lradc->soc == IMX28_LRADC)
		FUNC11(FUNC2(0),
		       adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
	FUNC11(0x1, adc->base + LRADC_CTRL0 + STMP_OFFSET_REG_CLR);

	/* Enable / disable the divider per requirement */
	if (FUNC9(chan, &adc->is_divided))
		FUNC11(1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET,
		       adc->base + LRADC_CTRL2 + STMP_OFFSET_REG_SET);
	else
		FUNC11(1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET,
		       adc->base + LRADC_CTRL2 + STMP_OFFSET_REG_CLR);

	/* Clean the slot's previous content, then set new one. */
	FUNC11(FUNC3(0),
	       adc->base + LRADC_CTRL4 + STMP_OFFSET_REG_CLR);
	FUNC11(chan, adc->base + LRADC_CTRL4 + STMP_OFFSET_REG_SET);

	FUNC11(0, adc->base + FUNC1(0));

	/* Enable the IRQ and start sampling the channel. */
	FUNC11(FUNC2(0),
	       adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_SET);
	FUNC11(FUNC0(0), adc->base + LRADC_CTRL0 + STMP_OFFSET_REG_SET);

	/* Wait for completion on the channel, 1 second max. */
	ret = FUNC10(&adc->completion, HZ);
	if (!ret)
		ret = -ETIMEDOUT;
	if (ret < 0)
		goto err;

	/* Read the data. */
	*val = FUNC7(adc->base + FUNC1(0)) & LRADC_CH_VALUE_MASK;
	ret = IIO_VAL_INT;

err:
	FUNC11(FUNC2(0),
	       adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

	FUNC5(iio_dev);

	return ret;
}