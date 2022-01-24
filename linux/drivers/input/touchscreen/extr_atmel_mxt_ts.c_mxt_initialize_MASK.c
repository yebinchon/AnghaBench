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
struct mxt_data {int in_bootloader; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MXT_CFG_NAME ; 
 int /*<<< orphan*/  MXT_FW_RESET_TIME ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mxt_data*) ; 
 int /*<<< orphan*/  mxt_config_cb ; 
 int FUNC4 (struct mxt_data*,int) ; 
 int FUNC5 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct mxt_data*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mxt_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mxt_data *data)
{
	struct i2c_client *client = data->client;
	int recovery_attempts = 0;
	int error;

	while (1) {
		error = FUNC5(data);
		if (!error)
			break;

		/* Check bootloader state */
		error = FUNC4(data, false);
		if (error) {
			FUNC1(&client->dev, "Trying alternate bootloader address\n");
			error = FUNC4(data, true);
			if (error) {
				/* Chip is not in appmode or bootloader mode */
				return error;
			}
		}

		/* OK, we are in bootloader, see if we can recover */
		if (++recovery_attempts > 1) {
			FUNC0(&client->dev, "Could not recover from bootloader mode\n");
			/*
			 * We can reflash from this state, so do not
			 * abort initialization.
			 */
			data->in_bootloader = true;
			return 0;
		}

		/* Attempt to exit bootloader into app mode */
		FUNC6(data, false);
		FUNC2(MXT_FW_RESET_TIME);
	}

	error = FUNC3(data);
	if (error)
		return error;

	error = FUNC7(THIS_MODULE, true, MXT_CFG_NAME,
					&client->dev, GFP_KERNEL, data,
					mxt_config_cb);
	if (error) {
		FUNC0(&client->dev, "Failed to invoke firmware loader: %d\n",
			error);
		return error;
	}

	return 0;
}