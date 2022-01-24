#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct bma180_data {int /*<<< orphan*/  mutex; TYPE_1__* part_info; scalar_t__ trig; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_disable ) (struct bma180_data*) ;} ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct bma180_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bma180_data*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct bma180_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC5(indio_dev);
	if (data->trig) {
		FUNC4(data->trig);
		FUNC3(data->trig);
	}

	FUNC6(&data->mutex);
	data->part_info->chip_disable(data);
	FUNC7(&data->mutex);

	return 0;
}