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
struct atlas_data {int /*<<< orphan*/  trig; } ;

/* Variables and functions */
 int FUNC0 (struct atlas_data*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct atlas_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC1(client);
	struct atlas_data *data = FUNC3(indio_dev);

	FUNC2(indio_dev);
	FUNC5(indio_dev);
	FUNC4(data->trig);

	FUNC6(&client->dev);
	FUNC8(&client->dev);
	FUNC7(&client->dev);

	return FUNC0(data, 0);
}