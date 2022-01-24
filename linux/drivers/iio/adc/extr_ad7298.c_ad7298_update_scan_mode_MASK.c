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
struct iio_dev {int /*<<< orphan*/  masklength; } ;
struct ad7298_state {unsigned short ext_ref; TYPE_1__* ring_xfer; int /*<<< orphan*/  ring_msg; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct TYPE_2__ {int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AD7298_MAX_CHAN ; 
 unsigned short AD7298_WRITE ; 
 int FUNC1 (unsigned long const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short) ; 
 struct ad7298_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,unsigned long const*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
	const unsigned long *active_scan_mask)
{
	struct ad7298_state *st = FUNC3(indio_dev);
	int i, m;
	unsigned short command;
	int scan_count;

	/* Now compute overall size */
	scan_count = FUNC1(active_scan_mask, indio_dev->masklength);

	command = AD7298_WRITE | st->ext_ref;

	for (i = 0, m = FUNC0(0); i < AD7298_MAX_CHAN; i++, m >>= 1)
		if (FUNC6(i, active_scan_mask))
			command |= m;

	st->tx_buf[0] = FUNC2(command);

	/* build spi ring message */
	st->ring_xfer[0].tx_buf = &st->tx_buf[0];
	st->ring_xfer[0].len = 2;
	st->ring_xfer[0].cs_change = 1;
	st->ring_xfer[1].tx_buf = &st->tx_buf[1];
	st->ring_xfer[1].len = 2;
	st->ring_xfer[1].cs_change = 1;

	FUNC5(&st->ring_msg);
	FUNC4(&st->ring_xfer[0], &st->ring_msg);
	FUNC4(&st->ring_xfer[1], &st->ring_msg);

	for (i = 0; i < scan_count; i++) {
		st->ring_xfer[i + 2].rx_buf = &st->rx_buf[i];
		st->ring_xfer[i + 2].len = 2;
		st->ring_xfer[i + 2].cs_change = 1;
		FUNC4(&st->ring_xfer[i + 2], &st->ring_msg);
	}
	/* make sure last transfer cs_change is not set */
	st->ring_xfer[i + 1].cs_change = 0;

	return 0;
}