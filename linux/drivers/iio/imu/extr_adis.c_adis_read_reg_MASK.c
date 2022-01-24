#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_transfer {unsigned int* tx_buf; int bits_per_word; int len; int cs_change; int /*<<< orphan*/  delay_usecs; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  cs_change_delay_unit; int /*<<< orphan*/  cs_change_delay; } ;
struct spi_message {int dummy; } ;
struct adis {unsigned int* tx; unsigned int current_page; int /*<<< orphan*/  txrx_lock; int /*<<< orphan*/  rx; TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  read_delay; int /*<<< orphan*/  cs_change_delay; int /*<<< orphan*/  write_delay; } ;

/* Variables and functions */
 unsigned int ADIS_PAGE_SIZE ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ADIS_REG_PAGE_ID ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SPI_DELAY_UNIT_USECS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_message*) ; 
 int FUNC9 (TYPE_2__*,struct spi_message*) ; 

int FUNC10(struct adis *adis, unsigned int reg,
	unsigned int *val, unsigned int size)
{
	unsigned int page = reg / ADIS_PAGE_SIZE;
	struct spi_message msg;
	int ret;
	struct spi_transfer xfers[] = {
		{
			.tx_buf = adis->tx,
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
			.delay_usecs = adis->data->write_delay,
			.cs_change_delay = adis->data->cs_change_delay,
			.cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
		}, {
			.tx_buf = adis->tx + 2,
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
			.delay_usecs = adis->data->read_delay,
			.cs_change_delay = adis->data->cs_change_delay,
			.cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
		}, {
			.tx_buf = adis->tx + 4,
			.rx_buf = adis->rx,
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
			.delay_usecs = adis->data->read_delay,
			.cs_change_delay = adis->data->cs_change_delay,
			.cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
		}, {
			.rx_buf = adis->rx + 2,
			.bits_per_word = 8,
			.len = 2,
			.delay_usecs = adis->data->read_delay,
		},
	};

	FUNC5(&adis->txrx_lock);
	FUNC8(&msg);

	if (adis->current_page != page) {
		adis->tx[0] = FUNC1(ADIS_REG_PAGE_ID);
		adis->tx[1] = page;
		FUNC7(&xfers[0], &msg);
	}

	switch (size) {
	case 4:
		adis->tx[2] = FUNC0(reg + 2);
		adis->tx[3] = 0;
		FUNC7(&xfers[1], &msg);
		/* fall through */
	case 2:
		adis->tx[4] = FUNC0(reg);
		adis->tx[5] = 0;
		FUNC7(&xfers[2], &msg);
		FUNC7(&xfers[3], &msg);
		break;
	default:
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC9(adis->spi, &msg);
	if (ret) {
		FUNC2(&adis->spi->dev, "Failed to read register 0x%02X: %d\n",
				reg, ret);
		goto out_unlock;
	} else {
		adis->current_page = page;
	}

	switch (size) {
	case 4:
		*val = FUNC4(adis->rx);
		break;
	case 2:
		*val = FUNC3(adis->rx + 2);
		break;
	}

out_unlock:
	FUNC6(&adis->txrx_lock);

	return ret;
}