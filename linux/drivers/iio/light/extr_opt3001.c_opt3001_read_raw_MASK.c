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
struct opt3001 {scalar_t__ mode; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 129 
#define  IIO_CHAN_INFO_PROCESSED 128 
 scalar_t__ IIO_LIGHT ; 
 scalar_t__ OPT3001_CONFIGURATION_M_CONTINUOUS ; 
 struct opt3001* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct opt3001*,int*,int*) ; 
 int FUNC4 (struct opt3001*,int*,int*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *iio,
		struct iio_chan_spec const *chan, int *val, int *val2,
		long mask)
{
	struct opt3001 *opt = FUNC0(iio);
	int ret;

	if (opt->mode == OPT3001_CONFIGURATION_M_CONTINUOUS)
		return -EBUSY;

	if (chan->type != IIO_LIGHT)
		return -EINVAL;

	FUNC1(&opt->lock);

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED:
		ret = FUNC4(opt, val, val2);
		break;
	case IIO_CHAN_INFO_INT_TIME:
		ret = FUNC3(opt, val, val2);
		break;
	default:
		ret = -EINVAL;
	}

	FUNC2(&opt->lock);

	return ret;
}