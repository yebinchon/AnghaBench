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
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_IC_TYPE_CMD ; 
 int /*<<< orphan*/  ETP_I2C_NSM_VERSION_CMD ; 
 int /*<<< orphan*/  ETP_I2C_OSM_VERSION_CMD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct i2c_client*,int*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
				   u16 *ic_type, u8 *version,
				   u8 *clickpad)
{
	int error;
	u8 pattern_ver;
	u8 val[3];

	error = FUNC2(client, &pattern_ver);
	if (error) {
		FUNC1(&client->dev, "failed to get pattern version\n");
		return error;
	}

	if (pattern_ver == 0x01) {
		error = FUNC3(client, ETP_I2C_IC_TYPE_CMD, val);
		if (error) {
			FUNC1(&client->dev, "failed to get ic type: %d\n",
				error);
			return error;
		}
		*ic_type = FUNC0((__be16 *)val);

		error = FUNC3(client, ETP_I2C_NSM_VERSION_CMD,
					  val);
		if (error) {
			FUNC1(&client->dev, "failed to get SM version: %d\n",
				error);
			return error;
		}
		*version = val[1];
		*clickpad = val[0] & 0x10;
	} else {
		error = FUNC3(client, ETP_I2C_OSM_VERSION_CMD, val);
		if (error) {
			FUNC1(&client->dev, "failed to get SM version: %d\n",
				error);
			return error;
		}
		*version = val[0];
		*ic_type = val[1];

		error = FUNC3(client, ETP_I2C_NSM_VERSION_CMD,
					  val);
		if (error) {
			FUNC1(&client->dev, "failed to get SM version: %d\n",
				error);
			return error;
		}
		*clickpad = val[0] & 0x10;
	}

	return 0;
}