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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct max5481_data {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX5481_COPY_AB_TO_NV ; 
 struct iio_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct max5481_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct max5481_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC0(&spi->dev);
	struct max5481_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);

	/* save wiper reg to NV reg */
	return FUNC3(data, MAX5481_COPY_AB_TO_NV, 0);
}