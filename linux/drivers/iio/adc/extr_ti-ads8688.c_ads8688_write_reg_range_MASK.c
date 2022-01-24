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
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
typedef  enum ads8688_range { ____Placeholder_ads8688_range } ads8688_range ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_dev*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
				   struct iio_chan_spec const *chan,
				   enum ads8688_range range)
{
	unsigned int tmp;
	int ret;

	tmp = FUNC0(chan->channel);
	ret = FUNC1(indio_dev, tmp, range);

	return ret;
}