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
struct mms114_data {int /*<<< orphan*/  core_reg; int /*<<< orphan*/  io_reg; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMS114_POWERON_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mms114_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mms114_data *data)
{
	struct i2c_client *client = data->client;
	int error;

	error = FUNC5(data->core_reg);
	if (error) {
		FUNC0(&client->dev, "Failed to enable avdd: %d\n", error);
		return error;
	}

	error = FUNC5(data->io_reg);
	if (error) {
		FUNC0(&client->dev, "Failed to enable vdd: %d\n", error);
		FUNC4(data->core_reg);
		return error;
	}

	FUNC3(MMS114_POWERON_DELAY);

	error = FUNC2(data);
	if (error < 0) {
		FUNC4(data->io_reg);
		FUNC4(data->core_reg);
		return error;
	}

	FUNC1(client->irq);

	return 0;
}