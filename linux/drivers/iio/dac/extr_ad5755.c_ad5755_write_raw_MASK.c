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
struct ad5755_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ad5755_state*,struct iio_chan_spec const*,long,int,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC1 (struct iio_dev*,unsigned int,int) ; 
 struct ad5755_state* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, int val, int val2, long info)
{
	struct ad5755_state *st = FUNC2(indio_dev);
	unsigned int shift, reg, offset;
	int ret;

	ret = FUNC0(st, chan, info, true,
					&reg, &shift, &offset);
	if (ret)
		return ret;

	val <<= shift;
	val += offset;

	if (val < 0 || val > 0xffff)
		return -EINVAL;

	return FUNC1(indio_dev, reg, val);
}