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
typedef  scalar_t__ u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dme1737_data {scalar_t__ addr; struct i2c_client* client; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DO_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i2c_client*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static u8 FUNC4(const struct dme1737_data *data, u8 reg)
{
	struct i2c_client *client = data->client;
	s32 val;

	if (client) { /* I2C device */
		val = FUNC1(client, reg);

		if (val < 0) {
			FUNC0(&client->dev,
				 "Read from register 0x%02x failed! %s\n",
				 reg, DO_REPORT);
		}
	} else { /* ISA device */
		FUNC3(reg, data->addr);
		val = FUNC2(data->addr + 1);
	}

	return val;
}