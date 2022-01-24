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
struct spi_transfer {int bits_per_word; int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct iio_dev {int dummy; } ;
struct adxrs450_state {int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  rx; TYPE_1__* us; int /*<<< orphan*/  tx; } ;
typedef  int s16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADXRS450_SENSOR_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct adxrs450_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev, s16 *val)
{
	struct adxrs450_state *st = FUNC4(indio_dev);
	int ret;
	struct spi_transfer xfers[] = {
		{
			.tx_buf = &st->tx,
			.bits_per_word = 8,
			.len = sizeof(st->tx),
			.cs_change = 1,
		}, {
			.rx_buf = &st->rx,
			.bits_per_word = 8,
			.len = sizeof(st->rx),
		},
	};

	FUNC5(&st->buf_lock);
	st->tx = FUNC2(ADXRS450_SENSOR_DATA);

	ret = FUNC7(st->us, xfers, FUNC0(xfers));
	if (ret) {
		FUNC3(&st->us->dev, "Problem while reading sensor data\n");
		goto error_ret;
	}

	*val = (FUNC1(st->rx) >> 10) & 0xFFFF;

error_ret:
	FUNC6(&st->buf_lock);
	return ret;
}