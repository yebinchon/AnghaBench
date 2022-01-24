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
struct stm32_dfsdm_adc {int /*<<< orphan*/  fl_id; TYPE_1__* dfsdm; } ;
struct regmap {int dummy; } ;
struct iio_trigger {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFSDM_CR1_CFG_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stm32_dfsdm_adc*,int /*<<< orphan*/ ,struct iio_trigger*) ; 
 int FUNC3 (struct stm32_dfsdm_adc*,int /*<<< orphan*/ ,struct iio_trigger*) ; 
 int FUNC4 (struct stm32_dfsdm_adc*) ; 
 int FUNC5 (struct stm32_dfsdm_adc*,int /*<<< orphan*/ ,struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_dfsdm_adc*) ; 

__attribute__((used)) static int FUNC7(struct stm32_dfsdm_adc *adc,
				  struct iio_trigger *trig)
{
	struct regmap *regmap = adc->dfsdm->regmap;
	int ret;

	ret = FUNC2(adc, adc->fl_id, trig);
	if (ret < 0)
		return ret;

	ret = FUNC4(adc);
	if (ret < 0)
		return ret;

	ret = FUNC3(adc, adc->fl_id, trig);
	if (ret < 0)
		goto stop_channels;

	ret = FUNC5(adc, adc->fl_id, trig);
	if (ret < 0)
		goto filter_unconfigure;

	return 0;

filter_unconfigure:
	FUNC1(regmap, FUNC0(adc->fl_id),
			   DFSDM_CR1_CFG_MASK, 0);
stop_channels:
	FUNC6(adc);

	return ret;
}