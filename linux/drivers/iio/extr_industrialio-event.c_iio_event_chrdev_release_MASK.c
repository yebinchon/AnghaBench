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
struct inode {int dummy; } ;
struct iio_event_interface {int /*<<< orphan*/  flags; } ;
struct iio_dev {struct iio_event_interface* event_interface; } ;
struct file {struct iio_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_BUSY_BIT_POS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filep)
{
	struct iio_dev *indio_dev = filep->private_data;
	struct iio_event_interface *ev_int = indio_dev->event_interface;

	FUNC0(IIO_BUSY_BIT_POS, &ev_int->flags);

	FUNC1(indio_dev);

	return 0;
}