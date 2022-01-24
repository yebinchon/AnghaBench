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
struct silead_ts_data {scalar_t__ gpio_power; } ;
struct i2c_client {int dummy; } ;
typedef  enum silead_ts_power { ____Placeholder_silead_ts_power } silead_ts_power ;

/* Variables and functions */
 int /*<<< orphan*/  SILEAD_POWER_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 struct silead_ts_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client,
				enum silead_ts_power state)
{
	struct silead_ts_data *data = FUNC1(client);

	if (data->gpio_power) {
		FUNC0(data->gpio_power, state);
		FUNC2(SILEAD_POWER_SLEEP);
	}
}