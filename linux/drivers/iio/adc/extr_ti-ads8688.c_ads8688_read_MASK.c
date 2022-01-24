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
typedef  int /*<<< orphan*/  u32 ;
struct spi_transfer {int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct iio_dev {int dummy; } ;
struct ads8688_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {void* d32; int /*<<< orphan*/ * d8; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADS8688_CMD_DONT_CARE_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  ADS8688_CMD_REG_NOOP ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*) ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct ads8688_state* FUNC5 (struct iio_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev, unsigned int chan)
{
	struct ads8688_state *st = FUNC5(indio_dev);
	int ret;
	u32 tmp;
	struct spi_transfer t[] = {
		{
			.tx_buf = &st->data[0].d8[0],
			.len = 4,
			.cs_change = 1,
		}, {
			.tx_buf = &st->data[1].d8[0],
			.rx_buf = &st->data[1].d8[0],
			.len = 4,
		},
	};

	tmp = FUNC0(FUNC1(chan));
	tmp <<= ADS8688_CMD_DONT_CARE_BITS;
	st->data[0].d32 = FUNC4(tmp);

	tmp = FUNC0(ADS8688_CMD_REG_NOOP);
	tmp <<= ADS8688_CMD_DONT_CARE_BITS;
	st->data[1].d32 = FUNC4(tmp);

	ret = FUNC6(st->spi, t, FUNC2(t));
	if (ret < 0)
		return ret;

	return FUNC3(st->data[1].d32) & 0xffff;
}