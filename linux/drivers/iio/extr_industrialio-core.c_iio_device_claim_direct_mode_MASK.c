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
struct iio_dev {int /*<<< orphan*/  mlock; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct iio_dev *indio_dev)
{
	FUNC1(&indio_dev->mlock);

	if (FUNC0(indio_dev)) {
		FUNC2(&indio_dev->mlock);
		return -EBUSY;
	}
	return 0;
}