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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct iio_dev {int dummy; } ;
struct adxrs450_state {int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  rx; TYPE_1__* us; int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADXRS450_P ; 
 int ADXRS450_READ_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int) ; 
 struct adxrs450_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
				    u8 reg_address,
				    u16 *val)
{
	struct adxrs450_state *st = FUNC5(indio_dev);
	u32 tx;
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

	FUNC6(&st->buf_lock);
	tx = ADXRS450_READ_DATA | (reg_address << 17);

	if (!(FUNC4(tx) & 1))
		tx |= ADXRS450_P;

	st->tx = FUNC2(tx);
	ret = FUNC8(st->us, xfers, FUNC0(xfers));
	if (ret) {
		FUNC3(&st->us->dev, "problem while reading 16 bit register 0x%02x\n",
				reg_address);
		goto error_ret;
	}

	*val = (FUNC1(st->rx) >> 5) & 0xFFFF;

error_ret:
	FUNC7(&st->buf_lock);
	return ret;
}