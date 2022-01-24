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
struct iio_event_interface {int /*<<< orphan*/  det_events; int /*<<< orphan*/  flags; } ;
struct iio_dev {int /*<<< orphan*/  mlock; struct iio_event_interface* event_interface; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  IIO_BUSY_BIT_POS ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_event_chrdev_fileops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct iio_dev *indio_dev)
{
	struct iio_event_interface *ev_int = indio_dev->event_interface;
	int fd;

	if (ev_int == NULL)
		return -ENODEV;

	fd = FUNC5(&indio_dev->mlock);
	if (fd)
		return fd;

	if (FUNC7(IIO_BUSY_BIT_POS, &ev_int->flags)) {
		fd = -EBUSY;
		goto unlock;
	}

	FUNC2(indio_dev);

	fd = FUNC0("iio:event", &iio_event_chrdev_fileops,
				indio_dev, O_RDONLY | O_CLOEXEC);
	if (fd < 0) {
		FUNC1(IIO_BUSY_BIT_POS, &ev_int->flags);
		FUNC3(indio_dev);
	} else {
		FUNC4(&ev_int->det_events);
	}

unlock:
	FUNC6(&indio_dev->mlock);
	return fd;
}