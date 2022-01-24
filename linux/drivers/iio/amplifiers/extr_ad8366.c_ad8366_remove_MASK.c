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
struct regulator {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad8366_state {struct regulator* reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct ad8366_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator*) ; 
 struct iio_dev* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC4(spi);
	struct ad8366_state *st = FUNC2(indio_dev);
	struct regulator *reg = st->reg;

	FUNC1(indio_dev);

	if (!FUNC0(reg))
		FUNC3(reg);

	return 0;
}