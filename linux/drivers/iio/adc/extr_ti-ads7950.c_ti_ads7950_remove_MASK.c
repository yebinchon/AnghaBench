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
struct ti_ads7950_state {int /*<<< orphan*/  slock; int /*<<< orphan*/  reg; int /*<<< orphan*/  chip; } ;
struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct ti_ads7950_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC6(spi);
	struct ti_ads7950_state *st = FUNC2(indio_dev);

	FUNC0(&st->chip);
	FUNC1(indio_dev);
	FUNC3(indio_dev);
	FUNC5(st->reg);
	FUNC4(&st->slock);

	return 0;
}