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

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_FW_VERSION_CMD ; 
 int /*<<< orphan*/  ETP_I2C_IAP_VERSION_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct i2c_client*,int*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
				bool iap, u8 *version)
{
	int error;
	u8 pattern_ver;
	u8 val[3];

	error = FUNC1(client, &pattern_ver);
	if (error) {
		FUNC0(&client->dev, "failed to get pattern version\n");
		return error;
	}

	error = FUNC2(client,
				  iap ? ETP_I2C_IAP_VERSION_CMD :
					ETP_I2C_FW_VERSION_CMD,
				  val);
	if (error) {
		FUNC0(&client->dev, "failed to get %s version: %d\n",
			iap ? "IAP" : "FW", error);
		return error;
	}

	if (pattern_ver == 0x01)
		*version = iap ? val[1] : val[0];
	else
		*version = val[0];
	return 0;
}