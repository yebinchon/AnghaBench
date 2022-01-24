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
struct adis_data {scalar_t__ has_paging; } ;
struct adis {int current_page; struct adis_data const* data; struct spi_device* spi; int /*<<< orphan*/  txrx_lock; } ;

/* Variables and functions */
 int FUNC0 (struct adis*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,struct adis*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct adis *adis, struct iio_dev *indio_dev,
	struct spi_device *spi, const struct adis_data *data)
{
	FUNC2(&adis->txrx_lock);
	adis->spi = spi;
	adis->data = data;
	FUNC1(indio_dev, adis);

	if (data->has_paging) {
		/* Need to set the page before first read/write */
		adis->current_page = -1;
	} else {
		/* Page will always be 0 */
		adis->current_page = 0;
	}

	return FUNC0(adis, false);
}