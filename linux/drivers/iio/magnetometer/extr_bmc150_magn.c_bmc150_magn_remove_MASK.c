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
struct bmc150_magn_data {scalar_t__ irq; int /*<<< orphan*/  mutex; scalar_t__ dready_trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_MAGN_POWER_MODE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct bmc150_magn_data*,int /*<<< orphan*/ ,int) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct bmc150_magn_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 

int FUNC12(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct bmc150_magn_data *data = FUNC4(indio_dev);

	FUNC3(indio_dev);

	FUNC9(dev);
	FUNC11(dev);
	FUNC10(dev);

	FUNC6(indio_dev);

	if (data->irq > 0)
		FUNC2(data->irq, data->dready_trig);

	if (data->dready_trig)
		FUNC5(data->dready_trig);

	FUNC7(&data->mutex);
	FUNC0(data, BMC150_MAGN_POWER_MODE_SUSPEND, true);
	FUNC8(&data->mutex);

	return 0;
}