#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lv0104cs_private {size_t calibscale; size_t scale; size_t int_time; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct TYPE_6__ {int val; int val2; } ;
struct TYPE_5__ {int val; int val2; } ;
struct TYPE_4__ {int val; int val2; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBSCALE 131 
#define  IIO_CHAN_INFO_INT_TIME 130 
#define  IIO_CHAN_INFO_PROCESSED 129 
#define  IIO_CHAN_INFO_SCALE 128 
 scalar_t__ IIO_LIGHT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 struct lv0104cs_private* FUNC0 (struct iio_dev*) ; 
 TYPE_3__* lv0104cs_calibscales ; 
 int FUNC1 (struct lv0104cs_private*,int*,int*) ; 
 TYPE_2__* lv0104cs_int_times ; 
 TYPE_1__* lv0104cs_scales ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int *val, int *val2, long mask)
{
	struct lv0104cs_private *lv0104cs = FUNC0(indio_dev);
	int ret;

	if (chan->type != IIO_LIGHT)
		return -EINVAL;

	FUNC2(&lv0104cs->lock);

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED:
		ret = FUNC1(lv0104cs, val, val2);
		if (ret)
			goto err_mutex;
		ret = IIO_VAL_INT_PLUS_MICRO;
		break;

	case IIO_CHAN_INFO_CALIBSCALE:
		*val = lv0104cs_calibscales[lv0104cs->calibscale].val;
		*val2 = lv0104cs_calibscales[lv0104cs->calibscale].val2;
		ret = IIO_VAL_INT_PLUS_MICRO;
		break;

	case IIO_CHAN_INFO_SCALE:
		*val = lv0104cs_scales[lv0104cs->scale].val;
		*val2 = lv0104cs_scales[lv0104cs->scale].val2;
		ret = IIO_VAL_INT_PLUS_MICRO;
		break;

	case IIO_CHAN_INFO_INT_TIME:
		*val = lv0104cs_int_times[lv0104cs->int_time].val;
		*val2 = lv0104cs_int_times[lv0104cs->int_time].val2;
		ret = IIO_VAL_INT_PLUS_MICRO;
		break;

	default:
		ret = -EINVAL;
	}

err_mutex:
	FUNC3(&lv0104cs->lock);

	return ret;
}