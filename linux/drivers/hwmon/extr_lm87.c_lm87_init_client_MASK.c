#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct regulator {int dummy; } ;
struct lm87_data {int channel; int config; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CHAN_TEMP3 ; 
 int CHAN_VCC_5V ; 
 int /*<<< orphan*/  FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LM87_REG_CHANNEL_MODE ; 
 int /*<<< orphan*/  LM87_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * LM87_REG_TEMP_HIGH ; 
 int /*<<< orphan*/ * LM87_REG_TEMP_LOW ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,struct i2c_client*) ; 
 struct regulator* FUNC8 (TYPE_1__*,char*) ; 
 struct lm87_data* FUNC9 (struct i2c_client*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm87_restore_config ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct device_node*,char*) ; 
 int FUNC13 (struct regulator*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client)
{
	struct lm87_data *data = FUNC9(client);
	int rc;
	struct device_node *of_node = client->dev.of_node;
	u8 val = 0;
	struct regulator *vcc = NULL;

	if (of_node) {
		if (FUNC12(of_node, "has-temp3"))
			val |= CHAN_TEMP3;
		if (FUNC12(of_node, "has-in6"))
			val |= FUNC0(0);
		if (FUNC12(of_node, "has-in7"))
			val |= FUNC0(1);
		vcc = FUNC8(&client->dev, "vcc");
		if (!FUNC1(vcc)) {
			if (FUNC13(vcc) == 5000000)
				val |= CHAN_VCC_5V;
		}
		data->channel = val;
		FUNC11(client,
				LM87_REG_CHANNEL_MODE, data->channel);
	} else if (FUNC6(&client->dev)) {
		data->channel = *(u8 *)FUNC6(&client->dev);
		FUNC11(client,
				 LM87_REG_CHANNEL_MODE, data->channel);
	} else {
		data->channel = FUNC10(client, LM87_REG_CHANNEL_MODE);
	}
	data->config = FUNC10(client, LM87_REG_CONFIG) & 0x6F;

	rc = FUNC7(&client->dev, lm87_restore_config, client);
	if (rc)
		return rc;

	if (!(data->config & 0x01)) {
		int i;

		/* Limits are left uninitialized after power-up */
		for (i = 1; i < 6; i++) {
			FUNC11(client, FUNC5(i), 0x00);
			FUNC11(client, FUNC4(i), 0xFF);
		}
		for (i = 0; i < 2; i++) {
			FUNC11(client, LM87_REG_TEMP_HIGH[i], 0x7F);
			FUNC11(client, LM87_REG_TEMP_LOW[i], 0x00);
			FUNC11(client, FUNC3(i), 0x00);
			FUNC11(client, FUNC2(i), 0xFF);
		}
		if (data->channel & CHAN_TEMP3) {
			FUNC11(client, LM87_REG_TEMP_HIGH[2], 0x7F);
			FUNC11(client, LM87_REG_TEMP_LOW[2], 0x00);
		} else {
			FUNC11(client, FUNC5(0), 0x00);
			FUNC11(client, FUNC4(0), 0xFF);
		}
	}

	/* Make sure Start is set and INT#_Clear is clear */
	if ((data->config & 0x09) != 0x01)
		FUNC11(client, LM87_REG_CONFIG,
				 (data->config & 0x77) | 0x01);
	return 0;
}