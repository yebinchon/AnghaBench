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
struct spi_device_id {scalar_t__ driver_data; } ;
struct spi_device {int dummy; } ;
struct max1118 {int /*<<< orphan*/  reg; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct max1118* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 scalar_t__ max1118 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct spi_device_id* FUNC4 (struct spi_device*) ; 
 struct iio_dev* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC5(spi);
	struct max1118 *adc = FUNC1(indio_dev);
	const struct spi_device_id *id = FUNC4(spi);

	FUNC0(indio_dev);
	FUNC2(indio_dev);
	if (id->driver_data == max1118)
		return FUNC3(adc->reg);

	return 0;
}