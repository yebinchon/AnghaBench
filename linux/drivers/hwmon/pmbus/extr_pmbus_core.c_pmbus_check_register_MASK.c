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
struct pmbus_data {int flags; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int PMBUS_SKIP_STATUS_CHECK ; 
 struct pmbus_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int) ; 

__attribute__((used)) static bool FUNC3(struct i2c_client *client,
				 int (*func)(struct i2c_client *client,
					     int page, int reg),
				 int page, int reg)
{
	int rv;
	struct pmbus_data *data = FUNC0(client);

	rv = func(client, page, reg);
	if (rv >= 0 && !(data->flags & PMBUS_SKIP_STATUS_CHECK))
		rv = FUNC1(client);
	FUNC2(client, -1);
	return rv >= 0;
}