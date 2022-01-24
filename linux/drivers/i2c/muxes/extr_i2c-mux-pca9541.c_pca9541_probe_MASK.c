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
struct pca9541 {struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 int /*<<< orphan*/  I2C_MUX_ARBITRATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_mux_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_mux_core* FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pca9541* FUNC5 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  pca9541_release_chan ; 
 int /*<<< orphan*/  pca9541_select_chan ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adap = client->adapter;
	struct i2c_mux_core *muxc;
	struct pca9541 *data;
	int ret;

	if (!FUNC1(adap, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/*
	 * I2C accesses are unprotected here.
	 * We have to lock the I2C segment before releasing the bus.
	 */
	FUNC2(adap, I2C_LOCK_SEGMENT);
	FUNC8(client);
	FUNC7(adap, I2C_LOCK_SEGMENT);

	/* Create mux adapter */

	muxc = FUNC4(adap, &client->dev, 1, sizeof(*data),
			     I2C_MUX_ARBITRATOR,
			     pca9541_select_chan, pca9541_release_chan);
	if (!muxc)
		return -ENOMEM;

	data = FUNC5(muxc);
	data->client = client;

	FUNC6(client, muxc);

	ret = FUNC3(muxc, 0, 0, 0);
	if (ret)
		return ret;

	FUNC0(&client->dev, "registered master selector for I2C %s\n",
		 client->name);

	return 0;
}