#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int dummy; } ;
struct i2c_board_info {scalar_t__ flags; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FTS_DEVICE_DETECT_REG_1 ; 
 int /*<<< orphan*/  FTS_DEVICE_DETECT_REG_2 ; 
 int /*<<< orphan*/  FTS_DEVICE_DETECT_REG_3 ; 
 int /*<<< orphan*/  FTS_DEVICE_ID_REG ; 
 int /*<<< orphan*/  FTS_DEVICE_REVISION_REG ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 TYPE_1__* fts_id ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
		      struct i2c_board_info *info)
{
	int val;

	/* detection works with revsion greater or equal to 0x2b */
	val = FUNC0(client, FTS_DEVICE_REVISION_REG);
	if (val < 0x2b)
		return -ENODEV;

	/* Device Detect Regs must have 0x17 0x34 and 0x54 */
	val = FUNC0(client, FTS_DEVICE_DETECT_REG_1);
	if (val != 0x17)
		return -ENODEV;

	val = FUNC0(client, FTS_DEVICE_DETECT_REG_2);
	if (val != 0x34)
		return -ENODEV;

	val = FUNC0(client, FTS_DEVICE_DETECT_REG_3);
	if (val != 0x54)
		return -ENODEV;

	/*
	 * 0x10 == Baseboard Management Controller, 0x01 == Teutates
	 * Device ID Reg needs to be 0x11
	 */
	val = FUNC0(client, FTS_DEVICE_ID_REG);
	if (val != 0x11)
		return -ENODEV;

	FUNC1(info->type, fts_id[0].name, I2C_NAME_SIZE);
	info->flags = 0;
	return 0;
}