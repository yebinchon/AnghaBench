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
struct spi_transfer {int len; int /*<<< orphan*/ * tx_buf; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct ad9523_state {int /*<<< orphan*/  spi; TYPE_1__* data; } ;
struct TYPE_2__ {void* d32; int /*<<< orphan*/ * d8; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int AD9523_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct ad9523_state* FUNC6 (struct iio_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
		unsigned int addr, unsigned int val)
{
	struct ad9523_state *st = FUNC6(indio_dev);
	int ret;
	struct spi_transfer t[] = {
		{
			.tx_buf = &st->data[0].d8[2],
			.len = 2,
		}, {
			.tx_buf = &st->data[1].d8[4 - FUNC2(addr)],
			.len = FUNC2(addr),
		},
	};

	st->data[0].d32 = FUNC4(AD9523_WRITE |
				      FUNC1(FUNC2(addr)) |
				      FUNC0(addr));
	st->data[1].d32 = FUNC4(val);

	ret = FUNC7(st->spi, t, FUNC3(t));

	if (ret < 0)
		FUNC5(&indio_dev->dev, "write failed (%d)", ret);

	return ret;
}