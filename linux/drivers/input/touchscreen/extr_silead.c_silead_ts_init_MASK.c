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
struct silead_ts_data {int /*<<< orphan*/  max_fingers; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SILEAD_CLOCK ; 
 int /*<<< orphan*/  SILEAD_CMD_RESET ; 
 int /*<<< orphan*/  SILEAD_CMD_SLEEP_MAX ; 
 int /*<<< orphan*/  SILEAD_CMD_SLEEP_MIN ; 
 int /*<<< orphan*/  SILEAD_CMD_START ; 
 int /*<<< orphan*/  SILEAD_REG_CLOCK ; 
 int /*<<< orphan*/  SILEAD_REG_RESET ; 
 int /*<<< orphan*/  SILEAD_REG_TOUCH_NR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct silead_ts_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct silead_ts_data *data = FUNC1(client);
	int error;

	error = FUNC2(client, SILEAD_REG_RESET,
					  SILEAD_CMD_RESET);
	if (error)
		goto i2c_write_err;
	FUNC3(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

	error = FUNC2(client, SILEAD_REG_TOUCH_NR,
					data->max_fingers);
	if (error)
		goto i2c_write_err;
	FUNC3(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

	error = FUNC2(client, SILEAD_REG_CLOCK,
					  SILEAD_CLOCK);
	if (error)
		goto i2c_write_err;
	FUNC3(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

	error = FUNC2(client, SILEAD_REG_RESET,
					  SILEAD_CMD_START);
	if (error)
		goto i2c_write_err;
	FUNC3(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

	return 0;

i2c_write_err:
	FUNC0(&client->dev, "Registers clear error %d\n", error);
	return error;
}