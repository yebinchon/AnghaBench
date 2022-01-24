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
struct device {int dummy; } ;
struct bmc150_accel_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_ACCEL_SLEEP_MODE_DEEP_SUSPEND ; 
 scalar_t__ BMC150_ACCEL_TRIGGERS ; 
 int /*<<< orphan*/  FUNC0 (struct bmc150_accel_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bmc150_accel_data*,scalar_t__) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct bmc150_accel_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

int FUNC11(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	struct bmc150_accel_data *data = FUNC4(indio_dev);

	FUNC3(indio_dev);

	FUNC8(dev);
	FUNC10(dev);
	FUNC9(dev);

	FUNC1(data, BMC150_ACCEL_TRIGGERS - 1);

	FUNC5(indio_dev);

	FUNC6(&data->mutex);
	FUNC0(data, BMC150_ACCEL_SLEEP_MODE_DEEP_SUSPEND, 0);
	FUNC7(&data->mutex);

	return 0;
}