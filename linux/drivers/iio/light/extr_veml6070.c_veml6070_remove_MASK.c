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
struct veml6070_data {int /*<<< orphan*/  client2; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct veml6070_data* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct veml6070_data *data = FUNC3(indio_dev);

	FUNC2(indio_dev);
	FUNC1(data->client2);

	return 0;
}