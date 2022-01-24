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
struct iio_chan_spec {int dummy; } ;
struct ad5758_state {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_DAC_INPUT ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int FUNC0 (struct ad5758_state*,int /*<<< orphan*/ ,int) ; 
 struct ad5758_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long info)
{
	struct ad5758_state *st = FUNC1(indio_dev);
	int ret;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		FUNC2(&st->lock);
		ret = FUNC0(st, AD5758_DAC_INPUT, val);
		FUNC3(&st->lock);
		return ret;
	default:
		return -EINVAL;
	}
}