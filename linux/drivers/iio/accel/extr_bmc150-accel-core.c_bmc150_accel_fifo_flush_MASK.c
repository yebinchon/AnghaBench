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
struct bmc150_accel_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct iio_dev*,unsigned int,int) ; 
 struct bmc150_accel_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, unsigned samples)
{
	struct bmc150_accel_data *data = FUNC1(indio_dev);
	int ret;

	FUNC2(&data->mutex);
	ret = FUNC0(indio_dev, samples, false);
	FUNC3(&data->mutex);

	return ret;
}