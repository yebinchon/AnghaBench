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

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_IAP_CMD ; 
 int /*<<< orphan*/  ETP_I2C_IAP_PASSWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	int error;

	error = FUNC1(client, ETP_I2C_IAP_CMD,
				   ETP_I2C_IAP_PASSWORD);
	if (error) {
		FUNC0(&client->dev, "cannot set flash key: %d\n", error);
		return error;
	}

	return 0;
}