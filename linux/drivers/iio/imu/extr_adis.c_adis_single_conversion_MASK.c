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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct TYPE_2__ {int storagebits; char sign; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int /*<<< orphan*/  address; } ;
struct adis {int dummy; } ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 int FUNC0 (struct adis*) ; 
 int FUNC1 (struct adis*,int /*<<< orphan*/ ,unsigned int*,int) ; 
 struct adis* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned int,int) ; 

int FUNC6(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, unsigned int error_mask, int *val)
{
	struct adis *adis = FUNC2(indio_dev);
	unsigned int uval;
	int ret;

	FUNC3(&indio_dev->mlock);

	ret = FUNC1(adis, chan->address, &uval,
			chan->scan_type.storagebits / 8);
	if (ret)
		goto err_unlock;

	if (uval & error_mask) {
		ret = FUNC0(adis);
		if (ret)
			goto err_unlock;
	}

	if (chan->scan_type.sign == 's')
		*val = FUNC5(uval, chan->scan_type.realbits - 1);
	else
		*val = uval & ((1 << chan->scan_type.realbits) - 1);

	ret = IIO_VAL_INT;
err_unlock:
	FUNC4(&indio_dev->mlock);
	return ret;
}