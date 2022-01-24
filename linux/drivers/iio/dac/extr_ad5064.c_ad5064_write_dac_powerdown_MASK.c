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
struct iio_chan_spec {size_t channel; } ;
struct ad5064_state {int* pwr_down; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct ad5064_state*,struct iio_chan_spec const*) ; 
 struct ad5064_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC5(struct iio_dev *indio_dev,
	 uintptr_t private, const struct iio_chan_spec *chan, const char *buf,
	 size_t len)
{
	struct ad5064_state *st = FUNC1(indio_dev);
	bool pwr_down;
	int ret;

	ret = FUNC4(buf, &pwr_down);
	if (ret)
		return ret;

	FUNC2(&st->lock);
	st->pwr_down[chan->channel] = pwr_down;

	ret = FUNC0(st, chan);
	FUNC3(&st->lock);
	return ret ? ret : len;
}