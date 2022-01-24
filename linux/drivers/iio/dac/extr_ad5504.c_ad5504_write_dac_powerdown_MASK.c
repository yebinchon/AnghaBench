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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct ad5504_state {int pwr_down_mask; int /*<<< orphan*/  pwr_down_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD5504_ADDR_CTRL ; 
 int /*<<< orphan*/  AD5504_ADDR_NOOP ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ad5504_state*,int /*<<< orphan*/ ,int) ; 
 struct ad5504_state* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC5(struct iio_dev *indio_dev,
	uintptr_t private, const struct iio_chan_spec *chan, const char *buf,
	size_t len)
{
	bool pwr_down;
	int ret;
	struct ad5504_state *st = FUNC3(indio_dev);

	ret = FUNC4(buf, &pwr_down);
	if (ret)
		return ret;

	if (pwr_down)
		st->pwr_down_mask |= (1 << chan->channel);
	else
		st->pwr_down_mask &= ~(1 << chan->channel);

	ret = FUNC2(st, AD5504_ADDR_CTRL,
				FUNC1(st->pwr_down_mode) |
				FUNC0(st->pwr_down_mask));

	/* writes to the CTRL register must be followed by a NOOP */
	FUNC2(st, AD5504_ADDR_NOOP, 0);

	return ret ? ret : len;
}