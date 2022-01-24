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
typedef  int u32 ;
struct spi_transfer {int bits_per_word; int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct adxrs450_state {int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  rx; TYPE_1__* us; int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADXRS450_CHK ; 
 int ADXRS450_P ; 
 int ADXRS450_SENSOR_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC6(struct adxrs450_state *st,
		u32 *val, char chk)
{
	int ret;
	u32 tx;
	struct spi_transfer xfers = {
		.tx_buf = &st->tx,
		.rx_buf = &st->rx,
		.bits_per_word = 8,
		.len = sizeof(st->tx),
	};

	FUNC3(&st->buf_lock);
	tx = ADXRS450_SENSOR_DATA;
	if (chk)
		tx |= (ADXRS450_CHK | ADXRS450_P);
	st->tx = FUNC1(tx);
	ret = FUNC5(st->us, &xfers, 1);
	if (ret) {
		FUNC2(&st->us->dev, "Problem while reading initializing data\n");
		goto error_ret;
	}

	*val = FUNC0(st->rx);

error_ret:
	FUNC4(&st->buf_lock);
	return ret;
}