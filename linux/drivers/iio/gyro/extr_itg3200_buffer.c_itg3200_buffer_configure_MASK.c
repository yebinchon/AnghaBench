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
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  itg3200_trigger_handler ; 

int FUNC1(struct iio_dev *indio_dev)
{
	return FUNC0(indio_dev, &iio_pollfunc_store_time,
		itg3200_trigger_handler, NULL);
}