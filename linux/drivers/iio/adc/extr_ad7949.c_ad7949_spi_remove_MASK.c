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
struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad7949_adc_chip {int /*<<< orphan*/  vref; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct ad7949_adc_chip* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC4(spi);
	struct ad7949_adc_chip *ad7949_adc = FUNC1(indio_dev);

	FUNC0(indio_dev);
	FUNC2(&ad7949_adc->lock);
	FUNC3(ad7949_adc->vref);

	return 0;
}