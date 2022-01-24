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
struct silead_ts_data {int /*<<< orphan*/  chip_id; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  chip_id ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SILEAD_REG_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct silead_ts_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct silead_ts_data *data = FUNC2(client);
	__le32 chip_id;
	int error;

	error = FUNC3(client, SILEAD_REG_ID,
					      sizeof(chip_id), (u8 *)&chip_id);
	if (error < 0) {
		FUNC0(&client->dev, "Chip ID read error %d\n", error);
		return error;
	}

	data->chip_id = FUNC4(chip_id);
	FUNC1(&client->dev, "Silead chip ID: 0x%8X", data->chip_id);

	return 0;
}