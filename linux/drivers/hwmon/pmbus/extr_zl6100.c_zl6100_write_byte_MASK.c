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
struct zl6100_data {int /*<<< orphan*/  access; } ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct pmbus_driver_info* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 struct zl6100_data* FUNC3 (struct pmbus_driver_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct zl6100_data*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int page, u8 value)
{
	const struct pmbus_driver_info *info = FUNC1(client);
	struct zl6100_data *data = FUNC3(info);
	int ret;

	if (page > 0)
		return -ENXIO;

	FUNC4(data);
	ret = FUNC2(client, page, value);
	data->access = FUNC0();

	return ret;
}