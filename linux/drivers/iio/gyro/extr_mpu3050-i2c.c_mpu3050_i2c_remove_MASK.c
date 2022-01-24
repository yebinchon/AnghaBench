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
struct mpu3050 {scalar_t__ i2cmux; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct mpu3050* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(&client->dev);
	struct mpu3050 *mpu3050 = FUNC2(indio_dev);

	if (mpu3050->i2cmux)
		FUNC1(mpu3050->i2cmux);

	return FUNC3(&client->dev);
}