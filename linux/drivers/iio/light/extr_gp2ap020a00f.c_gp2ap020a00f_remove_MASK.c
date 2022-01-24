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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct gp2ap020a00f_data {int /*<<< orphan*/  vled_reg; int /*<<< orphan*/  trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  GP2AP020A00F_OPMODE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 int FUNC2 (struct gp2ap020a00f_data*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct gp2ap020a00f_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC3(client);
	struct gp2ap020a00f_data *data = FUNC5(indio_dev);
	int err;

	err = FUNC2(data,
					GP2AP020A00F_OPMODE_SHUTDOWN);
	if (err < 0)
		FUNC0(&indio_dev->dev, "Failed to power off the device.\n");

	FUNC4(indio_dev);
	FUNC6(data->trig);
	FUNC1(client->irq, indio_dev);
	FUNC7(indio_dev);
	FUNC8(data->vled_reg);

	return 0;
}