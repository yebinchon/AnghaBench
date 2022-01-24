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
struct stm32_dfsdm_adc {int /*<<< orphan*/ * cb_priv; int /*<<< orphan*/ * cb; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct stm32_dfsdm_adc* FUNC0 (struct iio_dev*) ; 

int FUNC1(struct iio_dev *iio_dev)
{
	struct stm32_dfsdm_adc *adc;

	if (!iio_dev)
		return -EINVAL;
	adc = FUNC0(iio_dev);

	adc->cb = NULL;
	adc->cb_priv = NULL;

	return 0;
}