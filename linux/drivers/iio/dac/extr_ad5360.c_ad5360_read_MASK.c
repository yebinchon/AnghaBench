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
struct ad5360_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  d32; int /*<<< orphan*/ * d8; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AD5360_CMD_SPECIAL_FUNCTION ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  AD5360_REG_SF_READBACK ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct ad5360_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct iio_dev *indio_dev, unsigned int type,
	unsigned int addr)
{
	struct ad5360_state *st = FUNC7(indio_dev);
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

	FUNC8(&indio_dev->mlock);

	st->data[0].d32 = FUNC6(FUNC1(AD5360_CMD_SPECIAL_FUNCTION) |
		FUNC0(AD5360_REG_SF_READBACK) |
		FUNC3(type) |
		FUNC2(addr));

	ret = FUNC10(st->spi, t, FUNC4(t));
	if (ret >= 0)
		ret = FUNC5(st->data[1].d32) & 0xffff;

	FUNC9(&indio_dev->mlock);

	return ret;
}