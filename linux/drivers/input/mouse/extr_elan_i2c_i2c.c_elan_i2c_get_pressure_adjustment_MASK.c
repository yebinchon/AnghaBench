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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_PRESSURE_CMD ; 
 int ETP_PRESSURE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
					    int *adjustment)
{
	int error;
	u8 val[3];

	error = FUNC1(client, ETP_I2C_PRESSURE_CMD, val);
	if (error) {
		FUNC0(&client->dev, "failed to get pressure format: %d\n",
			error);
		return error;
	}

	if ((val[0] >> 4) & 0x1)
		*adjustment = 0;
	else
		*adjustment = ETP_PRESSURE_OFFSET;

	return 0;
}