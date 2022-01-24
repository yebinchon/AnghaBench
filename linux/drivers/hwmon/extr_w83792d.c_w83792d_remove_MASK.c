#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct w83792d_data {int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct w83792d_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w83792d_group ; 
 int /*<<< orphan*/ * w83792d_group_fan ; 

__attribute__((used)) static int
FUNC4(struct i2c_client *client)
{
	struct w83792d_data *data = FUNC2(client);
	int i;

	FUNC1(data->hwmon_dev);
	FUNC3(&client->dev.kobj, &w83792d_group);
	for (i = 0; i < FUNC0(w83792d_group_fan); i++)
		FUNC3(&client->dev.kobj,
				   &w83792d_group_fan[i]);

	return 0;
}