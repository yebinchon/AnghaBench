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
struct lv0104cs_private {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBSCALE 130 
#define  IIO_CHAN_INFO_INT_TIME 129 
#define  IIO_CHAN_INFO_SCALE 128 
 scalar_t__ IIO_LIGHT ; 
 struct lv0104cs_private* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct lv0104cs_private*,int,int) ; 
 int FUNC2 (struct lv0104cs_private*,int,int) ; 
 int FUNC3 (struct lv0104cs_private*,int,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int val, int val2, long mask)
{
	struct lv0104cs_private *lv0104cs = FUNC0(indio_dev);

	if (chan->type != IIO_LIGHT)
		return -EINVAL;

	switch (mask) {
	case IIO_CHAN_INFO_CALIBSCALE:
		return FUNC1(lv0104cs, val, val2);

	case IIO_CHAN_INFO_SCALE:
		return FUNC3(lv0104cs, val, val2);

	case IIO_CHAN_INFO_INT_TIME:
		return FUNC2(lv0104cs, val, val2);

	default:
		return -EINVAL;
	}
}