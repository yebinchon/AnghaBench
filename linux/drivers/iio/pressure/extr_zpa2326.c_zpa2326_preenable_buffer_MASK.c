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
struct zpa2326_private {scalar_t__ waken; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	int ret = FUNC1(indio_dev);

	if (ret < 0)
		return ret;

	/* Tell zpa2326_postenable_buffer() if we have just been powered on. */
	((struct zpa2326_private *)
	 FUNC0(indio_dev))->waken = FUNC0(indio_dev);

	return 0;
}