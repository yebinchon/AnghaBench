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
struct iio_channel {TYPE_1__* indio_dev; int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  info_exist_lock; int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_PROCESSED ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_RAW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_channel*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_channel*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct iio_channel *chan, int *val)
{
	int ret;

	FUNC3(&chan->indio_dev->info_exist_lock);
	if (chan->indio_dev->info == NULL) {
		ret = -ENODEV;
		goto err_unlock;
	}

	if (FUNC0(chan->channel, IIO_CHAN_INFO_PROCESSED)) {
		ret = FUNC1(chan, val, NULL,
				       IIO_CHAN_INFO_PROCESSED);
	} else {
		ret = FUNC1(chan, val, NULL, IIO_CHAN_INFO_RAW);
		if (ret < 0)
			goto err_unlock;
		ret = FUNC2(chan, *val, val, 1);
	}

err_unlock:
	FUNC4(&chan->indio_dev->info_exist_lock);

	return ret;
}