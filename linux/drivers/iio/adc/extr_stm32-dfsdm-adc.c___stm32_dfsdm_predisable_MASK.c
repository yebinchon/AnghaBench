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
struct stm32_dfsdm_adc {scalar_t__ hwc; int /*<<< orphan*/  dfsdm; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct stm32_dfsdm_adc* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_dfsdm_adc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iio_dev *indio_dev)
{
	struct stm32_dfsdm_adc *adc = FUNC1(indio_dev);

	FUNC3(adc);

	FUNC2(indio_dev);

	FUNC4(adc->dfsdm);

	if (adc->hwc)
		FUNC0(adc->hwc);
}