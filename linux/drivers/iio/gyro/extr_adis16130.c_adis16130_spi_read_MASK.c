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
typedef  int u8 ;
typedef  int u32 ;
struct spi_transfer {int* tx_buf; int* rx_buf; int len; } ;
struct iio_dev {int dummy; } ;
struct adis16130_state {int* buf; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  us; } ;

/* Variables and functions */
 int ADIS16130_CON_RD ; 
 struct adis16130_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, u8 reg_addr, u32 *val)
{
	int ret;
	struct adis16130_state *st = FUNC0(indio_dev);
	struct spi_transfer xfer = {
		.tx_buf = st->buf,
		.rx_buf = st->buf,
		.len = 4,
	};

	FUNC1(&st->buf_lock);

	st->buf[0] = ADIS16130_CON_RD | reg_addr;
	st->buf[1] = st->buf[2] = st->buf[3] = 0;

	ret = FUNC3(st->us, &xfer, 1);
	if (ret == 0)
		*val = (st->buf[1] << 16) | (st->buf[2] << 8) | st->buf[3];
	FUNC2(&st->buf_lock);

	return ret;
}