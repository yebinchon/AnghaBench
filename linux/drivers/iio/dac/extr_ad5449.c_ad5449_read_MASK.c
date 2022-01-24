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
struct spi_transfer {int len; int cs_change; void** rx_buf; void** tx_buf; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct ad5449 {void** data; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 unsigned int AD5449_CMD_NOOP ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 unsigned int FUNC1 (void*) ; 
 void* FUNC2 (unsigned int) ; 
 struct ad5449* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev, unsigned int addr,
	unsigned int *val)
{
	struct ad5449 *st = FUNC3(indio_dev);
	int ret;
	struct spi_transfer t[] = {
		{
			.tx_buf = &st->data[0],
			.len = 2,
			.cs_change = 1,
		}, {
			.tx_buf = &st->data[1],
			.rx_buf = &st->data[1],
			.len = 2,
		},
	};

	FUNC4(&indio_dev->mlock);
	st->data[0] = FUNC2(addr << 12);
	st->data[1] = FUNC2(AD5449_CMD_NOOP);

	ret = FUNC6(st->spi, t, FUNC0(t));
	if (ret < 0)
		goto out_unlock;

	*val = FUNC1(st->data[1]);

out_unlock:
	FUNC5(&indio_dev->mlock);
	return ret;
}