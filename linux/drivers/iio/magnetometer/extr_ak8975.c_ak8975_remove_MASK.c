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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ak8975_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ak8975_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ak8975_data*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ak8975_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC2(client);
	struct ak8975_data *data = FUNC4(indio_dev);

	FUNC7(&client->dev);
	FUNC8(&client->dev);
	FUNC6(&client->dev);
	FUNC3(indio_dev);
	FUNC5(indio_dev);
	FUNC1(data, POWER_DOWN);
	FUNC0(data);

	return 0;
}