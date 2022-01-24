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
struct iio_sw_device {struct iio_dev* device; } ;
struct iio_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_sw_device *swd)
{
	/*
	 * Get a pointer to the device instance iio_dev structure
	 * from the bus subsystem. E.g.
	 * struct iio_dev *indio_dev = i2c_get_clientdata(client);
	 * struct iio_dev *indio_dev = spi_get_drvdata(spi);
	 */
	struct iio_dev *indio_dev = swd->device;

	/* Unregister the device */
	FUNC1(indio_dev);

	/* Device specific code to power down etc */

	/* Buffered capture related cleanup */
	FUNC3(indio_dev);

	FUNC2(indio_dev);

	/* Free all structures */
	FUNC4(indio_dev->name);
	FUNC0(indio_dev);

	return 0;
}