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
typedef  int u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adm9240_data {int vrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM9240_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ADM9240_REG_TEMP_CONF ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct adm9240_data* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct i2c_client *client)
{
	struct adm9240_data *data = FUNC5(client);
	u8 conf = FUNC6(client, ADM9240_REG_CONFIG);
	u8 mode = FUNC6(client, ADM9240_REG_TEMP_CONF) & 3;

	data->vrm = FUNC8(); /* need this to report vid as mV */

	FUNC4(&client->dev, "Using VRM: %d.%d\n", data->vrm / 10,
			data->vrm % 10);

	if (conf & 1) { /* measurement cycle running: report state */

		FUNC4(&client->dev, "status: config 0x%02x mode %u\n",
				conf, mode);

	} else { /* cold start: open limits before starting chip */
		int i;

		for (i = 0; i < 6; i++) {
			FUNC7(client,
					FUNC2(i), 0);
			FUNC7(client,
					FUNC1(i), 255);
		}
		FUNC7(client,
				FUNC0(0), 255);
		FUNC7(client,
				FUNC0(1), 255);
		FUNC7(client,
				FUNC3(0), 127);
		FUNC7(client,
				FUNC3(1), 127);

		/* start measurement cycle */
		FUNC7(client, ADM9240_REG_CONFIG, 1);

		FUNC4(&client->dev,
			 "cold start: config was 0x%02x mode %u\n", conf, mode);
	}
}