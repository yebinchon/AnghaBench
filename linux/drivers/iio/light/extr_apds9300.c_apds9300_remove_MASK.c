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
struct i2c_client {int dummy; } ;
struct apds9300_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct apds9300_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct apds9300_data*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct apds9300_data* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC2(client);
	struct apds9300_data *data = FUNC4(indio_dev);

	FUNC3(indio_dev);

	/* Ensure that power off and interrupts are disabled */
	FUNC0(data, 0);
	FUNC1(data, 0);

	return 0;
}