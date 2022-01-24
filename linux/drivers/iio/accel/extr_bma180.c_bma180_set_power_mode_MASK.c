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
struct iio_chan_spec {int dummy; } ;
struct bma180_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct bma180_data*,unsigned int) ; 
 struct bma180_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
		const struct iio_chan_spec *chan, unsigned int mode)
{
	struct bma180_data *data = FUNC1(indio_dev);
	int ret;

	FUNC2(&data->mutex);
	ret = FUNC0(data, mode);
	FUNC3(&data->mutex);

	return ret;
}