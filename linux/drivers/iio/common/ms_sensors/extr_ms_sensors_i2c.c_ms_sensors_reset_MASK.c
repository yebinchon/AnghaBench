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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

int FUNC3(void *cli, u8 cmd, unsigned int delay)
{
	int ret;
	struct i2c_client *client = cli;

	ret = FUNC1(client, cmd);
	if (ret) {
		FUNC0(&client->dev, "Failed to reset device\n");
		return ret;
	}
	FUNC2(delay, delay + 1000);

	return 0;
}