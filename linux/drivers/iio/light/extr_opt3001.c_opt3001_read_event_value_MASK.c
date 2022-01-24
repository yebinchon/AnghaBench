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
struct opt3001 {int /*<<< orphan*/  lock; int /*<<< orphan*/  low_thresh_mantissa; int /*<<< orphan*/  low_thresh_exp; int /*<<< orphan*/  high_thresh_mantissa; int /*<<< orphan*/  high_thresh_exp; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_EV_DIR_FALLING 129 
#define  IIO_EV_DIR_RISING 128 
 int IIO_VAL_INT_PLUS_MICRO ; 
 struct opt3001* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct opt3001*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *iio,
		const struct iio_chan_spec *chan, enum iio_event_type type,
		enum iio_event_direction dir, enum iio_event_info info,
		int *val, int *val2)
{
	struct opt3001 *opt = FUNC0(iio);
	int ret = IIO_VAL_INT_PLUS_MICRO;

	FUNC1(&opt->lock);

	switch (dir) {
	case IIO_EV_DIR_RISING:
		FUNC3(opt, opt->high_thresh_exp,
				opt->high_thresh_mantissa, val, val2);
		break;
	case IIO_EV_DIR_FALLING:
		FUNC3(opt, opt->low_thresh_exp,
				opt->low_thresh_mantissa, val, val2);
		break;
	default:
		ret = -EINVAL;
	}

	FUNC2(&opt->lock);

	return ret;
}