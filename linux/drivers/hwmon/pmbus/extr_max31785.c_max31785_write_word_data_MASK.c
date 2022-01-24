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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  PB_FAN_1_RPM ; 
#define  PMBUS_VIRT_PWM_1 129 
#define  PMBUS_VIRT_PWM_ENABLE_1 128 
 int FUNC0 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, int page,
				    int reg, u16 word)
{
	switch (reg) {
	case PMBUS_VIRT_PWM_1:
		return FUNC2(client, page, 0, 0, PB_FAN_1_RPM,
					FUNC1(word));
	case PMBUS_VIRT_PWM_ENABLE_1:
		return FUNC0(client, page, word);
	default:
		break;
	}

	return -ENODATA;
}