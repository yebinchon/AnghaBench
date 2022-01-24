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
struct bmg160_data {int /*<<< orphan*/  mutex; scalar_t__ motion_trig; scalar_t__ dready_trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMG160_MODE_DEEP_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct bmg160_data*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct bmg160_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

void FUNC11(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct bmg160_data *data = FUNC3(indio_dev);

	FUNC2(indio_dev);

	FUNC8(dev);
	FUNC10(dev);
	FUNC9(dev);

	FUNC5(indio_dev);

	if (data->dready_trig) {
		FUNC4(data->dready_trig);
		FUNC4(data->motion_trig);
	}

	FUNC6(&data->mutex);
	FUNC0(data, BMG160_MODE_DEEP_SUSPEND);
	FUNC7(&data->mutex);
}