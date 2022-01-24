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
struct max5821_data {int /*<<< orphan*/  vref_reg; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct max5821_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct max5821_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC3(data->vref_reg);

	return 0;
}