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
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_MAX_X_AXIS_CMD ; 
 int /*<<< orphan*/  ETP_I2C_MAX_Y_AXIS_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			    unsigned int *max_x, unsigned int *max_y)
{
	int error;
	u8 val[3];

	error = FUNC1(client, ETP_I2C_MAX_X_AXIS_CMD, val);
	if (error) {
		FUNC0(&client->dev, "failed to get X dimension: %d\n", error);
		return error;
	}

	*max_x = FUNC2((__le16 *)val) & 0x0fff;

	error = FUNC1(client, ETP_I2C_MAX_Y_AXIS_CMD, val);
	if (error) {
		FUNC0(&client->dev, "failed to get Y dimension: %d\n", error);
		return error;
	}

	*max_y = FUNC2((__le16 *)val) & 0x0fff;

	return 0;
}