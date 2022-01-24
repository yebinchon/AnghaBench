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
struct iio_event_interface {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  mlock; int /*<<< orphan*/  clock_id; struct iio_event_interface* event_interface; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct iio_dev*) ; 
 scalar_t__ FUNC1 (struct iio_event_interface const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, clockid_t clock_id)
{
	int ret;
	const struct iio_event_interface *ev_int = indio_dev->event_interface;

	ret = FUNC2(&indio_dev->mlock);
	if (ret)
		return ret;
	if ((ev_int && FUNC1(ev_int)) ||
	    FUNC0(indio_dev)) {
		FUNC3(&indio_dev->mlock);
		return -EBUSY;
	}
	indio_dev->clock_id = clock_id;
	FUNC3(&indio_dev->mlock);

	return 0;
}