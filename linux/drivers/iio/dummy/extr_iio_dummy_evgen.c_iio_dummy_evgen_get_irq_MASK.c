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
struct TYPE_2__ {int* inuse; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_sim; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int IIO_EVENTGEN_NO ; 
 TYPE_1__* iio_evgen ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int i, ret = 0;

	if (!iio_evgen)
		return -ENODEV;

	FUNC1(&iio_evgen->lock);
	for (i = 0; i < IIO_EVENTGEN_NO; i++) {
		if (!iio_evgen->inuse[i]) {
			ret = FUNC0(&iio_evgen->irq_sim, i);
			iio_evgen->inuse[i] = true;
			break;
		}
	}
	FUNC2(&iio_evgen->lock);
	if (i == IIO_EVENTGEN_NO)
		return -ENOMEM;

	return ret;
}