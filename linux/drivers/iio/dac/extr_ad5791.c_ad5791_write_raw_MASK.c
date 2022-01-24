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
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int /*<<< orphan*/  realbits; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; TYPE_1__ scan_type; } ;
struct ad5791_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IIO_CHAN_INFO_RAW 128 
 int FUNC1 (struct ad5791_state*,int /*<<< orphan*/ ,int) ; 
 struct ad5791_state* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val,
			    int val2,
			    long mask)
{
	struct ad5791_state *st = FUNC2(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		val &= FUNC0(chan->scan_type.realbits - 1, 0);
		val <<= chan->scan_type.shift;

		return FUNC1(st, chan->address, val);

	default:
		return -EINVAL;
	}
}