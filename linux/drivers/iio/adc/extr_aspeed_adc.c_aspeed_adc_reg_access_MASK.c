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
struct iio_dev {int dummy; } ;
struct aspeed_adc_data {scalar_t__ base; } ;

/* Variables and functions */
 unsigned int ASPEED_REG_MAX ; 
 int EINVAL ; 
 struct aspeed_adc_data* FUNC0 (struct iio_dev*) ; 
 unsigned int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
				 unsigned int reg, unsigned int writeval,
				 unsigned int *readval)
{
	struct aspeed_adc_data *data = FUNC0(indio_dev);

	if (!readval || reg % 4 || reg > ASPEED_REG_MAX)
		return -EINVAL;

	*readval = FUNC1(data->base + reg);

	return 0;
}