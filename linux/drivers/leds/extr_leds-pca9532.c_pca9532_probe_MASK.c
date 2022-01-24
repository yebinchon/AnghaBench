#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pca9532_platform_data {int dummy; } ;
struct pca9532_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; int /*<<< orphan*/ * chip_info; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (struct pca9532_platform_data*) ; 
 int FUNC1 (struct pca9532_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct pca9532_platform_data* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct pca9532_data* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pca9532_data* FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct pca9532_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_pca9532_leds_match ; 
 int /*<<< orphan*/ * pca9532_chip_info_tbl ; 
 int FUNC11 (struct i2c_client*,struct pca9532_data*,struct pca9532_platform_data*) ; 
 struct pca9532_platform_data* FUNC12 (TYPE_1__*,struct device_node*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	int devid;
	const struct of_device_id *of_id;
	struct pca9532_data *data = FUNC7(client);
	struct pca9532_platform_data *pca9532_pdata =
			FUNC3(&client->dev);
	struct device_node *np = client->dev.of_node;

	if (!pca9532_pdata) {
		if (np) {
			pca9532_pdata =
				FUNC12(&client->dev, np);
			if (FUNC0(pca9532_pdata))
				return FUNC1(pca9532_pdata);
		} else {
			FUNC2(&client->dev, "no platform data\n");
			return -EINVAL;
		}
		of_id = FUNC10(of_pca9532_leds_match,
				&client->dev);
		if (FUNC13(!of_id))
			return -EINVAL;
		devid = (int)(uintptr_t) of_id->data;
	} else {
		devid = id->driver_data;
	}

	if (!FUNC6(client->adapter,
		I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	data = FUNC5(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->chip_info = &pca9532_chip_info_tbl[devid];

	FUNC4(&client->dev, "setting platform data\n");
	FUNC8(client, data);
	data->client = client;
	FUNC9(&data->update_lock);

	return FUNC11(client, data, pca9532_pdata);
}