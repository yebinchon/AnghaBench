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
struct hdc100x_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDC100X_REG_CONFIG_ACQ_MODE ; 
 int FUNC0 (struct hdc100x_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdc100x_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct hdc100x_data *data = FUNC1(indio_dev);
	int ret;

	/* Buffer is enabled. First set ACQ Mode, then attach poll func */
	FUNC3(&data->lock);
	ret = FUNC0(data, HDC100X_REG_CONFIG_ACQ_MODE,
				    HDC100X_REG_CONFIG_ACQ_MODE);
	FUNC4(&data->lock);
	if (ret)
		return ret;

	return FUNC2(indio_dev);
}