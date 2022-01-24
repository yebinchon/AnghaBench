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
struct adis16480 {int /*<<< orphan*/  ext_clk; int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct adis16480* FUNC4 (struct iio_dev*) ; 
 struct iio_dev* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC5(spi);
	struct adis16480 *st = FUNC4(indio_dev);

	FUNC3(indio_dev);
	FUNC0(indio_dev);

	FUNC1(&st->adis, indio_dev);
	FUNC2(st->ext_clk);

	return 0;
}