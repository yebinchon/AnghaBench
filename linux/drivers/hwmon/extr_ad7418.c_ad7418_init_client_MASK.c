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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ad7418_data {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7418_REG_CONF ; 
 int /*<<< orphan*/  AD7418_REG_CONF2 ; 
 scalar_t__ ad7417 ; 
 scalar_t__ ad7418 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ad7418_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct i2c_client *client)
{
	struct ad7418_data *data = FUNC2(client);

	int reg = FUNC3(client, AD7418_REG_CONF);
	if (reg < 0) {
		FUNC0(&client->dev, "cannot read configuration register\n");
	} else {
		FUNC1(&client->dev, "configuring for mode 1\n");
		FUNC4(client, AD7418_REG_CONF, reg & 0xfe);

		if (data->type == ad7417 || data->type == ad7418)
			FUNC4(client,
						AD7418_REG_CONF2, 0x00);
	}
}