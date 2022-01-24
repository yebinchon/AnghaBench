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
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct ad9523_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  d32; int /*<<< orphan*/ * d8; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int AD9523_READ ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 struct ad9523_state* FUNC7 (struct iio_dev*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev, unsigned int addr)
{
	struct ad9523_state *st = FUNC7(indio_dev);
	int ret;

	/* We encode the register size 1..3 bytes into the register address.
	 * On transfer we get the size from the register datum, and make sure
	 * the result is properly aligned.
	 */

	struct spi_transfer t[] = {
		{
			.tx_buf = &st->data[0].d8[2],
			.len = 2,
		}, {
			.rx_buf = &st->data[1].d8[4 - FUNC2(addr)],
			.len = FUNC2(addr),
		},
	};

	st->data[0].d32 = FUNC5(AD9523_READ |
				      FUNC1(FUNC2(addr)) |
				      FUNC0(addr));

	ret = FUNC8(st->spi, t, FUNC3(t));
	if (ret < 0)
		FUNC6(&indio_dev->dev, "read failed (%d)", ret);
	else
		ret = FUNC4(st->data[1].d32) & (0xFFFFFF >>
				  (8 * (3 - FUNC2(addr))));

	return ret;
}