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
struct iio_channel {TYPE_1__* indio_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  info_exist_lock; int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct iio_channel*,int,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct iio_channel *chan, int raw,
	int *processed, unsigned int scale)
{
	int ret;

	FUNC1(&chan->indio_dev->info_exist_lock);
	if (chan->indio_dev->info == NULL) {
		ret = -ENODEV;
		goto err_unlock;
	}

	ret = FUNC0(chan, raw, processed,
							scale);
err_unlock:
	FUNC2(&chan->indio_dev->info_exist_lock);

	return ret;
}