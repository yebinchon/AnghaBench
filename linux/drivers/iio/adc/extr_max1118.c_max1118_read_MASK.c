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
struct spi_transfer {int len; int delay_usecs; int cs_change; int* rx_buf; } ;
struct spi_device {int dummy; } ;
struct max1118 {int data; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct max1118* FUNC0 (struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct spi_device*) ; 
 int FUNC2 (struct spi_device*,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi, int channel)
{
	struct iio_dev *indio_dev = FUNC1(spi);
	struct max1118 *adc = FUNC0(indio_dev);
	struct spi_transfer xfers[] = {
		/*
		 * To select CH1 for conversion, CNVST pin must be brought high
		 * and low for a second time.
		 */
		{
			.len = 0,
			.delay_usecs = 1,	/* > CNVST Low Time 100 ns */
			.cs_change = 1,
		},
		/*
		 * The acquisition interval begins with the falling edge of
		 * CNVST.  The total acquisition and conversion process takes
		 * <7.5us.
		 */
		{
			.len = 0,
			.delay_usecs = 8,
		},
		{
			.rx_buf = &adc->data,
			.len = 1,
		},
	};
	int ret;

	if (channel == 0)
		ret = FUNC2(spi, xfers + 1, 2);
	else
		ret = FUNC2(spi, xfers, 3);

	if (ret)
		return ret;

	return adc->data;
}