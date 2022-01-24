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
struct ti_adc_data {int /*<<< orphan*/  ref; } ;
struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct ti_adc_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC4(spi);
	struct ti_adc_data *data = FUNC1(indio_dev);

	FUNC0(indio_dev);
	FUNC2(indio_dev);
	FUNC3(data->ref);

	return 0;
}