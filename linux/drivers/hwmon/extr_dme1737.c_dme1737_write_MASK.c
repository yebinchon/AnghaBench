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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dme1737_data {scalar_t__ addr; struct i2c_client* client; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DO_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static s32 FUNC3(const struct dme1737_data *data, u8 reg, u8 val)
{
	struct i2c_client *client = data->client;
	s32 res = 0;

	if (client) { /* I2C device */
		res = FUNC1(client, reg, val);

		if (res < 0) {
			FUNC0(&client->dev,
				 "Write to register 0x%02x failed! %s\n",
				 reg, DO_REPORT);
		}
	} else { /* ISA device */
		FUNC2(reg, data->addr);
		FUNC2(val, data->addr + 1);
	}

	return res;
}