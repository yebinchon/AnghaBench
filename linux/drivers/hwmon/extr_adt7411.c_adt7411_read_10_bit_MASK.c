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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, u8 lsb_reg,
				u8 msb_reg, u8 lsb_shift)
{
	struct adt7411_data *data = FUNC0(client);
	int val, tmp;

	FUNC2(&data->device_lock);

	val = FUNC1(client, lsb_reg);
	if (val < 0)
		goto exit_unlock;

	tmp = (val >> lsb_shift) & 3;
	val = FUNC1(client, msb_reg);

	if (val >= 0)
		val = (val << 2) | tmp;

 exit_unlock:
	FUNC3(&data->device_lock);

	return val;
}