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
struct spi_transfer {int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct ad5421_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  d32; int /*<<< orphan*/ * d8; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ad5421_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev, unsigned int reg)
{
	struct ad5421_state *st = FUNC3(indio_dev);
	int ret;
	struct spi_transfer t[] = {
		{
			.tx_buf = &st->data[0].d8[1],
			.len = 3,
			.cs_change = 1,
		}, {
			.rx_buf = &st->data[1].d8[1],
			.len = 3,
		},
	};

	FUNC4(&indio_dev->mlock);

	st->data[0].d32 = FUNC2((1 << 23) | (reg << 16));

	ret = FUNC6(st->spi, t, FUNC0(t));
	if (ret >= 0)
		ret = FUNC1(st->data[1].d32) & 0xffff;

	FUNC5(&indio_dev->mlock);

	return ret;
}