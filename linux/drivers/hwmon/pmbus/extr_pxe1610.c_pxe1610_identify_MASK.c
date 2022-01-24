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
struct pmbus_driver_info {int /*<<< orphan*/  vrm_version; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMBUS_VOUT_MODE ; 
 scalar_t__ FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vr12 ; 
 int /*<<< orphan*/  vr13 ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			     struct pmbus_driver_info *info)
{
	if (FUNC1(client, 0, PMBUS_VOUT_MODE)) {
		u8 vout_mode;
		int ret;

		/* Read the register with VOUT scaling value.*/
		ret = FUNC2(client, 0, PMBUS_VOUT_MODE);
		if (ret < 0)
			return ret;

		vout_mode = ret & FUNC0(4, 0);

		switch (vout_mode) {
		case 1:
			info->vrm_version = vr12;
			break;
		case 2:
			info->vrm_version = vr13;
			break;
		default:
			return -ENODEV;
		}
	}

	return 0;
}