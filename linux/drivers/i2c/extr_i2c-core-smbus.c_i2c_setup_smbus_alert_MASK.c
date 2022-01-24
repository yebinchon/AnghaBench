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
struct i2c_smbus_alert_setup {int dummy; } ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {struct i2c_smbus_alert_setup* platform_data; int /*<<< orphan*/  member_0; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct i2c_client* FUNC1 (struct i2c_adapter*,struct i2c_board_info*) ; 

struct i2c_client *FUNC2(struct i2c_adapter *adapter,
					 struct i2c_smbus_alert_setup *setup)
{
	struct i2c_board_info ara_board_info = {
		FUNC0("smbus_alert", 0x0c),
		.platform_data = setup,
	};

	return FUNC1(adapter, &ara_board_info);
}