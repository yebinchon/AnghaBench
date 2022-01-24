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
struct stm32_dfsdm_adc {unsigned long smask; int /*<<< orphan*/  nconv; } ;
struct iio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  masklength; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long const) ; 
 struct stm32_dfsdm_adc* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
					const unsigned long *scan_mask)
{
	struct stm32_dfsdm_adc *adc = FUNC2(indio_dev);

	adc->nconv = FUNC0(scan_mask, indio_dev->masklength);
	adc->smask = *scan_mask;

	FUNC1(&indio_dev->dev, "nconv=%d mask=%lx\n", adc->nconv, *scan_mask);

	return 0;
}