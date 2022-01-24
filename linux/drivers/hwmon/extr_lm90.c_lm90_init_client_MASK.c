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
struct lm90_data {int convrate_orig; int config_orig; int config; scalar_t__ kind; int /*<<< orphan*/  flags; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM90_FLAG_ADT7461_EXT ; 
 int /*<<< orphan*/  LM90_REG_R_CONFIG1 ; 
 int /*<<< orphan*/  LM90_REG_R_CONVRATE ; 
 scalar_t__ adt7461 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lm90_data*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm90_restore_conf ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct lm90_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lm90_data*,int) ; 
 scalar_t__ max6680 ; 
 scalar_t__ max6696 ; 
 scalar_t__ tmp451 ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, struct lm90_data *data)
{
	int config, convrate;

	convrate = FUNC1(client, LM90_REG_R_CONVRATE);
	if (convrate < 0)
		return convrate;
	data->convrate_orig = convrate;

	/*
	 * Start the conversions.
	 */
	config = FUNC1(client, LM90_REG_R_CONFIG1);
	if (config < 0)
		return config;
	data->config_orig = config;
	data->config = config;

	FUNC2(client, data, 500); /* 500ms; 2Hz conversion rate */

	/* Check Temperature Range Select */
	if (data->kind == adt7461 || data->kind == tmp451) {
		if (config & 0x04)
			data->flags |= LM90_FLAG_ADT7461_EXT;
	}

	/*
	 * Put MAX6680/MAX8881 into extended resolution (bit 0x10,
	 * 0.125 degree resolution) and range (0x08, extend range
	 * to -64 degree) mode for the remote temperature sensor.
	 */
	if (data->kind == max6680)
		config |= 0x18;

	/*
	 * Select external channel 0 for max6695/96
	 */
	if (data->kind == max6696)
		config &= ~0x08;

	config &= 0xBF;	/* run */
	FUNC3(data, config);

	return FUNC0(&client->dev, lm90_restore_conf, data);
}