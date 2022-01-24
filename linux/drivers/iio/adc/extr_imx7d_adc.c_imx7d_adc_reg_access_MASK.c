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
struct imx7d_adc {unsigned int regs; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IMX7D_REG_ADC_ADC_CFG ; 
 struct imx7d_adc* FUNC0 (struct iio_dev*) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			unsigned reg, unsigned writeval,
			unsigned *readval)
{
	struct imx7d_adc *info = FUNC0(indio_dev);

	if (!readval || reg % 4 || reg > IMX7D_REG_ADC_ADC_CFG)
		return -EINVAL;

	*readval = FUNC1(info->regs + reg);

	return 0;
}