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
struct spi_device {int max_speed_hz; int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct ms5611_state {struct spi_device* client; int /*<<< orphan*/  read_adc_temp_and_pressure; int /*<<< orphan*/  read_prom_word; int /*<<< orphan*/  reset; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 struct iio_dev* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct ms5611_state* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ms5611_spi_read_adc_temp_and_pressure ; 
 int /*<<< orphan*/  ms5611_spi_read_prom_word ; 
 int /*<<< orphan*/  ms5611_spi_reset ; 
 TYPE_1__* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct iio_dev*) ; 
 int FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	int ret;
	struct ms5611_state *st;
	struct iio_dev *indio_dev;

	indio_dev = FUNC0(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	FUNC4(spi, indio_dev);

	spi->mode = SPI_MODE_0;
	spi->max_speed_hz = 20000000;
	spi->bits_per_word = 8;
	ret = FUNC5(spi);
	if (ret < 0)
		return ret;

	st = FUNC1(indio_dev);
	st->reset = ms5611_spi_reset;
	st->read_prom_word = ms5611_spi_read_prom_word;
	st->read_adc_temp_and_pressure = ms5611_spi_read_adc_temp_and_pressure;
	st->client = spi;

	return FUNC2(indio_dev, &spi->dev, FUNC3(spi)->name,
			    FUNC3(spi)->driver_data);
}