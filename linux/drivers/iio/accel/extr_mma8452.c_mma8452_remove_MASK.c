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
struct mma8452_data {int /*<<< orphan*/  vdd_reg; int /*<<< orphan*/  vddio_reg; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct mma8452_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mma8452_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct mma8452_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);

	FUNC6(&client->dev);
	FUNC8(&client->dev);
	FUNC7(&client->dev);

	FUNC3(indio_dev);
	FUNC5(indio_dev);
	FUNC4(FUNC2(indio_dev));

	FUNC9(data->vddio_reg);
	FUNC9(data->vdd_reg);

	return 0;
}