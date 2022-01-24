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
typedef  scalar_t__ u32 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SILEAD_POWER_OFF ; 
 int /*<<< orphan*/  SILEAD_POWER_ON ; 
 scalar_t__ SILEAD_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	int error;
	u32 status;

	FUNC6(client, SILEAD_POWER_OFF);
	FUNC6(client, SILEAD_POWER_ON);

	error = FUNC1(client);
	if (error)
		return error;

	error = FUNC3(client);
	if (error)
		return error;

	error = FUNC5(client);
	if (error)
		return error;

	error = FUNC4(client);
	if (error)
		return error;

	error = FUNC7(client);
	if (error)
		return error;

	status = FUNC2(client);
	if (status != SILEAD_STATUS_OK) {
		FUNC0(&client->dev,
			"Initialization error, status: 0x%X\n", status);
		return -ENODEV;
	}

	return 0;
}