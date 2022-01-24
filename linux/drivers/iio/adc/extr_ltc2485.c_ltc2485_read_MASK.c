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
struct ltc2485_data {int /*<<< orphan*/  time_prev; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ltc2485_data*) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct ltc2485_data *data, int *val)
{
	struct i2c_client *client = data->client;
	__be32 buf = 0;
	int ret;

	FUNC4(data);

	ret = FUNC2(client, (char *)&buf, 4);
	if (ret < 0)  {
		FUNC1(&client->dev, "i2c_master_recv failed\n");
		return ret;
	}
	data->time_prev = FUNC3();
	*val = FUNC5(FUNC0(buf) >> 6, 24);

	return ret;
}