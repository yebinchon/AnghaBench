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
struct ad7303_state {scalar_t__ vdd_reg; scalar_t__ vref_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct ad7303_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct iio_dev* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC3(spi);
	struct ad7303_state *st = FUNC1(indio_dev);

	FUNC0(indio_dev);

	if (st->vref_reg)
		FUNC2(st->vref_reg);
	FUNC2(st->vdd_reg);

	return 0;
}