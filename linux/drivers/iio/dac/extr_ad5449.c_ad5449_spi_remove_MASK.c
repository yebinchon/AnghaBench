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
struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad5449 {int /*<<< orphan*/  vref_reg; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct ad5449* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC3(spi);
	struct ad5449 *st = FUNC1(indio_dev);

	FUNC0(indio_dev);

	FUNC2(st->chip_info->num_channels, st->vref_reg);

	return 0;
}