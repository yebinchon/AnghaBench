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
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int) ; 

int FUNC2(void *cli, int cmd, u16 *word)
{
	int ret;
	struct i2c_client *client = cli;

	ret = FUNC1(client, cmd);
	if (ret < 0) {
		FUNC0(&client->dev, "Failed to read prom word\n");
		return ret;
	}
	*word = ret;

	return 0;
}