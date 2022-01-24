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
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mms114_data *data)
{
	struct i2c_client *client = data->client;
	int error;

	FUNC1(client->irq);

	error = FUNC2(data->io_reg);
	if (error)
		FUNC0(&client->dev, "Failed to disable vdd: %d\n", error);

	error = FUNC2(data->core_reg);
	if (error)
		FUNC0(&client->dev, "Failed to disable avdd: %d\n", error);
}