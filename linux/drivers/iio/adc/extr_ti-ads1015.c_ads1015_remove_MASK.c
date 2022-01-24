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
struct ads1015_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADS1015_SINGLESHOT ; 
 int FUNC0 (struct ads1015_data*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ads1015_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC1(client);
	struct ads1015_data *data = FUNC3(indio_dev);

	FUNC2(indio_dev);

	FUNC4(&client->dev);
	FUNC6(&client->dev);
	FUNC5(&client->dev);

	/* power down single shot mode */
	return FUNC0(data, ADS1015_SINGLESHOT);
}