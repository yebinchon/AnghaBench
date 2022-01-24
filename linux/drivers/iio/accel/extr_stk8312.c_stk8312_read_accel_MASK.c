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
typedef  int u8 ;
struct stk8312_data {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC2(struct stk8312_data *data, u8 address)
{
	int ret;
	struct i2c_client *client = data->client;

	if (address > 2)
		return -EINVAL;

	ret = FUNC1(client, address);
	if (ret < 0)
		FUNC0(&client->dev, "register read failed\n");

	return ret;
}