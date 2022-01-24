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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_DISABLE_POWER ; 
 int /*<<< orphan*/  ETP_I2C_POWER_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, bool enable)
{
	u8 val[2];
	u16 reg;
	int error;

	error = FUNC1(client, ETP_I2C_POWER_CMD, val);
	if (error) {
		FUNC0(&client->dev,
			"failed to read current power state: %d\n",
			error);
		return error;
	}

	reg = FUNC3((__le16 *)val);
	if (enable)
		reg &= ~ETP_DISABLE_POWER;
	else
		reg |= ETP_DISABLE_POWER;

	error = FUNC2(client, ETP_I2C_POWER_CMD, reg);
	if (error) {
		FUNC0(&client->dev,
			"failed to write current power state: %d\n",
			error);
		return error;
	}

	return 0;
}