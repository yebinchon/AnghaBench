#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct ak8975_data {scalar_t__ eoc_gpio; int /*<<< orphan*/ * asa; TYPE_1__* def; int /*<<< orphan*/ * raw_to_gauss; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* raw_to_gauss ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * ctrl_regs; } ;

/* Variables and functions */
 size_t ASA_BASE ; 
 int /*<<< orphan*/  FUSE_ROM ; 
 int /*<<< orphan*/  POWER_DOWN ; 
 int FUNC0 (struct ak8975_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ak8975_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct ak8975_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC3(client);
	struct ak8975_data *data = FUNC5(indio_dev);
	int ret;

	/* Write the fused rom access mode. */
	ret = FUNC0(data, FUSE_ROM);
	if (ret < 0) {
		FUNC2(&client->dev, "Error in setting fuse access mode\n");
		return ret;
	}

	/* Get asa data and store in the device data. */
	ret = FUNC4(
			client, data->def->ctrl_regs[ASA_BASE],
			3, data->asa);
	if (ret < 0) {
		FUNC2(&client->dev, "Not able to read asa data\n");
		return ret;
	}

	/* After reading fuse ROM data set power-down mode */
	ret = FUNC0(data, POWER_DOWN);
	if (ret < 0) {
		FUNC2(&client->dev, "Error in setting power-down mode\n");
		return ret;
	}

	if (data->eoc_gpio > 0 || client->irq > 0) {
		ret = FUNC1(data);
		if (ret < 0) {
			FUNC2(&client->dev,
				"Error setting data ready interrupt\n");
			return ret;
		}
	}

	data->raw_to_gauss[0] = data->def->raw_to_gauss(data->asa[0]);
	data->raw_to_gauss[1] = data->def->raw_to_gauss(data->asa[1]);
	data->raw_to_gauss[2] = data->def->raw_to_gauss(data->asa[2]);

	return 0;
}