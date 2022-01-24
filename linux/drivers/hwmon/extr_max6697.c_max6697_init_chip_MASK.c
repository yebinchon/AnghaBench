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
struct max6697_platform_data {int resistance_cancellation; int ideality_value; int ideality_mask; int /*<<< orphan*/  over_temperature_mask; int /*<<< orphan*/  alert_mask; scalar_t__ beta_compensation; scalar_t__ extended_range_enable; scalar_t__ smbus_timeout_disable; } ;
struct max6697_data {scalar_t__ type; int temp_offset; int update_interval; struct max6697_chip_data* chip; } ;
struct max6697_chip_data {int channels; int valid_conf; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int MAX6581_CONF_EXTENDED ; 
 int /*<<< orphan*/  MAX6581_REG_IDEALITY ; 
 int /*<<< orphan*/  MAX6581_REG_IDEALITY_SELECT ; 
 int /*<<< orphan*/  MAX6581_REG_RESISTANCE ; 
 int MAX6693_CONF_BETA ; 
 int MAX6697_CONF_RESISTANCE ; 
 int MAX6697_CONF_TIMEOUT ; 
 int MAX6697_CONV_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX6697_REG_ALERT_MASK ; 
 int /*<<< orphan*/  MAX6697_REG_CONFIG ; 
 int /*<<< orphan*/  MAX6697_REG_OVERT_MASK ; 
 struct max6697_platform_data* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ max6581 ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct max6697_platform_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct max6697_platform_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct max6697_data *data,
			     struct i2c_client *client)
{
	struct max6697_platform_data *pdata = FUNC1(&client->dev);
	struct max6697_platform_data p;
	const struct max6697_chip_data *chip = data->chip;
	int factor = chip->channels;
	int ret, reg;

	/*
	 * Don't touch configuration if neither platform data nor OF
	 * configuration was specified. If that is the case, use the
	 * current chip configuration.
	 */
	if (!pdata && !client->dev.of_node) {
		reg = FUNC3(client, MAX6697_REG_CONFIG);
		if (reg < 0)
			return reg;
		if (data->type == max6581) {
			if (reg & MAX6581_CONF_EXTENDED)
				data->temp_offset = 64;
			reg = FUNC3(client,
						       MAX6581_REG_RESISTANCE);
			if (reg < 0)
				return reg;
			factor += FUNC2(reg);
		} else {
			if (reg & MAX6697_CONF_RESISTANCE)
				factor++;
		}
		goto done;
	}

	if (client->dev.of_node) {
		FUNC6(&p, 0, sizeof(p));
		FUNC5(client->dev.of_node, &p);
		pdata = &p;
	}

	reg = 0;
	if (pdata->smbus_timeout_disable &&
	    (chip->valid_conf & MAX6697_CONF_TIMEOUT)) {
		reg |= MAX6697_CONF_TIMEOUT;
	}
	if (pdata->extended_range_enable &&
	    (chip->valid_conf & MAX6581_CONF_EXTENDED)) {
		reg |= MAX6581_CONF_EXTENDED;
		data->temp_offset = 64;
	}
	if (pdata->resistance_cancellation &&
	    (chip->valid_conf & MAX6697_CONF_RESISTANCE)) {
		reg |= MAX6697_CONF_RESISTANCE;
		factor++;
	}
	if (pdata->beta_compensation &&
	    (chip->valid_conf & MAX6693_CONF_BETA)) {
		reg |= MAX6693_CONF_BETA;
	}

	ret = FUNC4(client, MAX6697_REG_CONFIG, reg);
	if (ret < 0)
		return ret;

	ret = FUNC4(client, MAX6697_REG_ALERT_MASK,
					FUNC0(pdata->alert_mask));
	if (ret < 0)
		return ret;

	ret = FUNC4(client, MAX6697_REG_OVERT_MASK,
				FUNC0(pdata->over_temperature_mask));
	if (ret < 0)
		return ret;

	if (data->type == max6581) {
		factor += FUNC2(pdata->resistance_cancellation >> 1);
		ret = FUNC4(client, MAX6581_REG_RESISTANCE,
					pdata->resistance_cancellation >> 1);
		if (ret < 0)
			return ret;
		ret = FUNC4(client, MAX6581_REG_IDEALITY,
						pdata->ideality_value);
		if (ret < 0)
			return ret;
		ret = FUNC4(client,
						MAX6581_REG_IDEALITY_SELECT,
						pdata->ideality_mask >> 1);
		if (ret < 0)
			return ret;
	}
done:
	data->update_interval = factor * MAX6697_CONV_TIME;
	return 0;
}