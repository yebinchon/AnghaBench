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
typedef  int u16 ;
struct spi_transfer {int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct iio_dev {int dummy; } ;
struct adis16080_state {int /*<<< orphan*/  buf; int /*<<< orphan*/  us; } ;

/* Variables and functions */
 int ADIS16080_DIN_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct adis16080_state* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
		u16 addr, int *val)
{
	struct adis16080_state *st = FUNC3(indio_dev);
	int ret;
	struct spi_transfer	t[] = {
		{
			.tx_buf		= &st->buf,
			.len		= 2,
			.cs_change	= 1,
		}, {
			.rx_buf		= &st->buf,
			.len		= 2,
		},
	};

	st->buf = FUNC2(addr | ADIS16080_DIN_WRITE);

	ret = FUNC5(st->us, t, FUNC0(t));
	if (ret == 0)
		*val = FUNC4(FUNC1(st->buf), 11);

	return ret;
}