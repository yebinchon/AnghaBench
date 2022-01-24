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
struct st_sensor_settings {int dummy; } ;
struct st_sensor_data {struct st_sensor_settings* sensor_settings; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  modalias; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct st_sensor_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 
 struct st_sensor_settings* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_magn_of_match ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct iio_dev*,struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	const struct st_sensor_settings *settings;
	struct st_sensor_data *mdata;
	struct iio_dev *indio_dev;
	int err;

	FUNC5(&spi->dev, st_magn_of_match,
				 spi->modalias, sizeof(spi->modalias));

	settings = FUNC4(spi->modalias);
	if (!settings) {
		FUNC0(&spi->dev, "device name %s not recognized.\n",
			spi->modalias);
		return -ENODEV;
	}

	indio_dev = FUNC1(&spi->dev, sizeof(*mdata));
	if (!indio_dev)
		return -ENOMEM;

	mdata = FUNC2(indio_dev);
	mdata->sensor_settings = (struct st_sensor_settings *)settings;

	err = FUNC6(indio_dev, spi);
	if (err < 0)
		return err;

	err = FUNC3(indio_dev);
	if (err < 0)
		return err;

	return 0;
}