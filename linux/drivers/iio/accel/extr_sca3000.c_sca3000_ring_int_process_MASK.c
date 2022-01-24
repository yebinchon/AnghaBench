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
struct sca3000_state {int* rx; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_BUF_COUNT_ADDR ; 
 int SCA3000_REG_INT_STATUS_HALF ; 
 int /*<<< orphan*/  SCA3000_REG_RING_OUT_ADDR ; 
 struct sca3000_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(u8 val, struct iio_dev *indio_dev)
{
	struct sca3000_state *st = FUNC0(indio_dev);
	int ret, i, num_available;

	FUNC2(&st->lock);

	if (val & SCA3000_REG_INT_STATUS_HALF) {
		ret = FUNC5(st, SCA3000_REG_BUF_COUNT_ADDR,
					      1);
		if (ret)
			goto error_ret;
		num_available = st->rx[0];
		/*
		 * num_available is the total number of samples available
		 * i.e. number of time points * number of channels.
		 */
		ret = FUNC4(st, SCA3000_REG_RING_OUT_ADDR, st->rx,
					num_available * 2);
		if (ret)
			goto error_ret;
		for (i = 0; i < num_available / 3; i++) {
			/*
			 * Dirty hack to cover for 11 bit in fifo, 13 bit
			 * direct reading.
			 *
			 * In theory the bottom two bits are undefined.
			 * In reality they appear to always be 0.
			 */
			FUNC1(indio_dev, st->rx + i * 3 * 2);
		}
	}
error_ret:
	FUNC3(&st->lock);
}