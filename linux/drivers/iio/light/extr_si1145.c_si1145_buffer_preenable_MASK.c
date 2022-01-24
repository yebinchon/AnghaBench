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
struct si1145_data {int /*<<< orphan*/  lock; } ;
struct iio_dev {int /*<<< orphan*/ * active_scan_mask; } ;

/* Variables and functions */
 struct si1145_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct si1145_data *data = FUNC0(indio_dev);
	int ret;

	FUNC1(&data->lock);
	ret = FUNC3(indio_dev, *indio_dev->active_scan_mask);
	FUNC2(&data->lock);

	return ret;
}