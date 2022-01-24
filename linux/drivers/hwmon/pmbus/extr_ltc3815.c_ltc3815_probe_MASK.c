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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int LTC3815_ID ; 
 int LTC3815_ID_MASK ; 
 int /*<<< orphan*/  LTC3815_MFR_SPECIAL_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ltc3815_info ; 
 int FUNC2 (struct i2c_client*,struct i2c_device_id const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	int chip_id;

	if (!FUNC0(client->adapter,
				     I2C_FUNC_SMBUS_READ_WORD_DATA))
		return -ENODEV;

	chip_id = FUNC1(client, LTC3815_MFR_SPECIAL_ID);
	if (chip_id < 0)
		return chip_id;
	if ((chip_id & LTC3815_ID_MASK) != LTC3815_ID)
		return -ENODEV;

	return FUNC2(client, id, &ltc3815_info);
}