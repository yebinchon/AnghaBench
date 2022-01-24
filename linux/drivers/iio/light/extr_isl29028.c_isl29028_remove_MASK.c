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
struct isl29028_chip {int dummy; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct isl29028_chip* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct isl29028_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct isl29028_chip *chip = FUNC2(indio_dev);

	FUNC1(indio_dev);

	FUNC4(&client->dev);
	FUNC6(&client->dev);
	FUNC5(&client->dev);

	return FUNC3(chip);
}