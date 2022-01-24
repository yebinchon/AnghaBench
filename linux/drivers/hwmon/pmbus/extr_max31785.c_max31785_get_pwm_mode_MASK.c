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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int PB_FAN_1_RPM ; 
 int /*<<< orphan*/  PMBUS_FAN_COMMAND_1 ; 
 int /*<<< orphan*/  PMBUS_FAN_CONFIG_12 ; 
 int FUNC0 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, int page)
{
	int config;
	int command;

	config = FUNC0(client, page, PMBUS_FAN_CONFIG_12);
	if (config < 0)
		return config;

	command = FUNC1(client, page, PMBUS_FAN_COMMAND_1);
	if (command < 0)
		return command;

	if (config & PB_FAN_1_RPM)
		return (command >= 0x8000) ? 3 : 2;

	if (command >= 0x8000)
		return 3;
	else if (command >= 0x2711)
		return 0;

	return 1;
}