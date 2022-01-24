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
struct i2c_client {scalar_t__ irq; } ;
struct ad7291_chip_info {scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ad7291_chip_info* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC1(client);
	struct ad7291_chip_info *chip = FUNC3(indio_dev);

	FUNC2(indio_dev);

	if (client->irq)
		FUNC0(client->irq, indio_dev);

	if (chip->reg)
		FUNC4(chip->reg);

	return 0;
}