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

/* Variables and functions */
 int ENODATA ; 
#define  PMBUS_CLEAR_FAULTS 128 
 int /*<<< orphan*/  PMBUS_STATUS_WORD ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, int page, u8 reg)
{
	int ret;

	switch (reg) {
	case PMBUS_CLEAR_FAULTS:
		/*
		 * LTC3815 does not support the CLEAR_FAULTS command.
		 * Emulate it by clearing the status register.
		 */
		ret = FUNC0(client, 0, PMBUS_STATUS_WORD);
		if (ret > 0) {
			FUNC1(client, 0, PMBUS_STATUS_WORD,
					      ret);
			ret = 0;
		}
		break;
	default:
		ret = -ENODATA;
		break;
	}
	return ret;
}