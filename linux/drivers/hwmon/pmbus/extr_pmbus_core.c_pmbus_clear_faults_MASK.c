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
struct pmbus_data {TYPE_1__* info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int pages; } ;

/* Variables and functions */
 struct pmbus_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int) ; 

void FUNC2(struct i2c_client *client)
{
	struct pmbus_data *data = FUNC0(client);
	int i;

	for (i = 0; i < data->info->pages; i++)
		FUNC1(client, i);
}