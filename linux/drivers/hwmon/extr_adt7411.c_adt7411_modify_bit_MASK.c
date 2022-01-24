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
struct i2c_client {int dummy; } ;
struct adt7411_data {int /*<<< orphan*/  device_lock; } ;

/* Variables and functions */
 struct adt7411_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, u8 reg, u8 bit,
				bool flag)
{
	struct adt7411_data *data = FUNC0(client);
	int ret, val;

	FUNC3(&data->device_lock);

	ret = FUNC1(client, reg);
	if (ret < 0)
		goto exit_unlock;

	if (flag)
		val = ret | bit;
	else
		val = ret & ~bit;

	ret = FUNC2(client, reg, val);

 exit_unlock:
	FUNC4(&data->device_lock);
	return ret;
}