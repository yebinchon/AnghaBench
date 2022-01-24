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
struct ad7124_state {int /*<<< orphan*/ * vref; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct ad7124_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC7 (struct spi_device*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC7(spi);
	struct ad7124_state *st = FUNC5(indio_dev);
	int i;

	FUNC4(indio_dev);
	FUNC2(indio_dev);
	FUNC3(st->mclk);

	for (i = FUNC0(st->vref) - 1; i >= 0; i--) {
		if (!FUNC1(st->vref[i]))
			FUNC6(st->vref[i]);
	}

	return 0;
}