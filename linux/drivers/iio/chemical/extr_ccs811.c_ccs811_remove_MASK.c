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
struct ccs811_data {scalar_t__ drdy_trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCS811_MEAS_MODE ; 
 int /*<<< orphan*/  CCS811_MODE_IDLE ; 
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ccs811_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct ccs811_data *data = FUNC3(indio_dev);

	FUNC2(indio_dev);
	FUNC5(indio_dev);
	if (data->drdy_trig)
		FUNC4(data->drdy_trig);

	return FUNC1(client, CCS811_MEAS_MODE,
					 CCS811_MODE_IDLE);
}