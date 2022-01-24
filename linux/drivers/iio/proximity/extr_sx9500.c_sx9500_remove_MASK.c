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
struct sx9500_data {int /*<<< orphan*/  buffer; int /*<<< orphan*/  trig; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct sx9500_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct sx9500_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC4(indio_dev);
	if (client->irq > 0)
		FUNC3(data->trig);
	FUNC5(data->buffer);

	return 0;
}