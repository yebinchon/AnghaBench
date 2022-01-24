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
 int /*<<< orphan*/  SILEAD_REG_RESET ; 
 int /*<<< orphan*/  SILEAD_STARTUP_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	int error;

	error = FUNC1(client, SILEAD_REG_RESET, 0x00);
	if (error) {
		FUNC0(&client->dev, "Startup error %d\n", error);
		return error;
	}

	FUNC2(SILEAD_STARTUP_SLEEP);

	return 0;
}