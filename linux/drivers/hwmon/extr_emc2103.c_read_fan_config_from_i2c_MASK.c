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
struct emc2103_data {int fan_multiplier; int fan_rpm_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_FAN_CONF1 ; 
 struct emc2103_data* FUNC0 (struct i2c_client*) ; 
 scalar_t__ FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)

{
	struct emc2103_data *data = FUNC0(client);
	u8 conf1;

	if (FUNC1(client, REG_FAN_CONF1, &conf1) < 0)
		return;

	data->fan_multiplier = 1 << ((conf1 & 0x60) >> 5);
	data->fan_rpm_control = (conf1 & 0x80) != 0;
}