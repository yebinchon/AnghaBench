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
struct i2c_client {int /*<<< orphan*/  addr; int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	int value;

	/* Warn if part was not "READY" */

	value = FUNC2(client, 0x40);

	if (value & 0x02) {
		FUNC0(&client->dev,
			"Client (%d,0x%02x) config is locked.\n",
			FUNC1(client->adapter), client->addr);
	}
	if (!(value & 0x04)) {
		FUNC0(&client->dev, "Client (%d,0x%02x) is not ready.\n",
			FUNC1(client->adapter), client->addr);
	}

/*
 * Start monitoring
 *
 * Try to clear LOCK, Set START, save everything else
 */
	value = (value & ~0x02) | 0x01;
	FUNC3(client, 0x40, value & 0xff);

}