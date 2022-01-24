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
struct kxcjk1013_data {int /*<<< orphan*/  mutex; scalar_t__ motion_trig; scalar_t__ dready_trig; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STANDBY ; 
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct kxcjk1013_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct kxcjk1013_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct kxcjk1013_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);

	FUNC8(&client->dev);
	FUNC10(&client->dev);
	FUNC9(&client->dev);

	if (data->dready_trig) {
		FUNC4(indio_dev);
		FUNC3(data->dready_trig);
		FUNC3(data->motion_trig);
	}

	FUNC6(&data->mutex);
	FUNC5(data, STANDBY);
	FUNC7(&data->mutex);

	return 0;
}