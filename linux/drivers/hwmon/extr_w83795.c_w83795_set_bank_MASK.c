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
struct w83795_data {int bank; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  W83795_REG_BANKSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct w83795_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 bank)
{
	struct w83795_data *data = FUNC1(client);
	int err;

	/* If the same bank is already set, nothing to do */
	if ((data->bank & 0x07) == bank)
		return 0;

	/* Change to new bank, preserve all other bits */
	bank |= data->bank & ~0x07;
	err = FUNC2(client, W83795_REG_BANKSEL, bank);
	if (err < 0) {
		FUNC0(&client->dev,
			"Failed to set bank to %d, err %d\n",
			(int)bank, err);
		return err;
	}
	data->bank = bank;

	return 0;
}